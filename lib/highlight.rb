require 'jekyll_plugin_support'
require_relative 'jekyll_highlight/version.rb'

# This Jekyll tag plugin is a minimal example.
#
# See https://www.mslinn.com/jekyll/10200-jekyll-plugin-background.html
# See https://www.mslinn.com/jekyll/10400-jekyll-plugin-template-collection.html
#
# @example Sample Usages
#   {% highlight text="highlight me" %}
#   {% highlight bg_color='yellow' text="highlight me" %}
#   {% highlight fg_color='green' bg_color='yellow' text="highlight me" %}
#
# The Jekyll log level defaults to :info, which means all the Jekyll.logger statements below will not generate output.
# You can control the log level when you start Jekyll.
# To set the log level to :debug, write an entry into _config.yml, like this:
# plugin_loggers:
#   Highlight: debug
module JekyllHighlight
  # This class implements the Jekyll highlight functionality
  class Highlight < JekyllSupport::JekyllTag
    PLUGIN_NAME = 'highlight'.freeze
    VERSION = JekyllHighlight::VERSION

    # Put your plugin logic here.
    # The following variables are predefined:
    #   @argument_string, @config, @envs, @helper, @layout, @logger, @mode, @page, @paginator, @site, @tag_name and @theme
    #
    # @param tag_name [String] is the name of the tag, which we already know.
    # @param argument_string [String] the arguments from the web page.
    # @param tokens [Liquid::ParseContext] tokenized command line
    # @return [void]
    def render_impl
      @text = @helper.parameter_specified? 'text'
      if @text.to_s.strip.empty?
        @logger.error "Highlight error: no text provided on line #{line_number} (after front matter)"
        return "<span style='color: white; background: red; padding: 2px;'>Highlight error: no text provided on line #{line_number} (after front matter)</span>"
      end

      @fg_color = @helper.parameter_specified?('fg_color') || 'black'  # Parameter fg_color defaults to black
      @bg_color = @helper.parameter_specified?('bg_color') || 'yellow' # Parameter bg_color defaults to yellow
      "<span style='color: #{@fg_color}; background: #{@bg_color}; padding: 2px;'>#{@text}</span>"
    end

    JekyllPluginHelper.register(self, PLUGIN_NAME)
  end
end

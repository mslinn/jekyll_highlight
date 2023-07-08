require 'jekyll_plugin_support'
require_relative 'jekyll_highlight/version.rb'

# This Jekyll tag plugin is a minimal example.
#
# See https://www.mslinn.com/jekyll/10200-jekyll-plugin-background.html
# See https://www.mslinn.com/jekyll/10400-jekyll-plugin-template-collection.html
#
# @example Heading for this example
#   {% highlight param1='value1' %}
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
      @color = @helper.parameter_specified? 'color' # Obtain the value of parameter color
      @bg_color = @helper.parameter_specified? 'bg_color' # Obtain the value of parameter bg_color
      <<~END_OUTPUT
        <pre class="example">
          @color='#{@color}'
          @bg_color='#{@bg_color}'
          Remaining markup: '#{@helper.remaining_markup}'.
        </pre>
      END_OUTPUT
    end

    JekyllPluginHelper.register(self, PLUGIN_NAME)
  end
end

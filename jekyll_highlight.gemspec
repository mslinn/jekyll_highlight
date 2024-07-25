require_relative 'lib/jekyll_highlight/version'

Gem::Specification.new do |spec|
  host = 'https://github.com/mslinn/jekyll_highlight'

  spec.authors               = ['Mike Slinn']
  spec.description           = <<~END_DESC
    This Jekyll tag outputs colored (highlighted) text.
    It would be better if it were implemented as a filter.
  END_DESC
  spec.email                 = ['mslinn@mslinn.com']
  spec.files                 = Dir['.rubocop.yml', 'LICENSE.*', 'Rakefile', '{lib,spec}/**/*', '*.gemspec', '*.md']
  spec.homepage              = 'https://github.com/mslinn/jekyll_highlight'
  spec.license               = 'MIT'
  spec.metadata = {
    'allowed_push_host' => 'https://rubygems.org',
    'bug_tracker_uri'   => "#{host}/issues",
    'changelog_uri'     => "#{host}/CHANGELOG.md",
    'homepage_uri'      => spec.homepage,
    'source_code_uri'   => host,
  }
  spec.name                 = 'jekyll_highlight'
  spec.post_install_message = <<~END_MESSAGE

    Thanks for installing #{spec.name}!

  END_MESSAGE
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '>= 3.1.0'
  spec.summary               = 'This Jekyll tag outputs colored (highlighted) text.'
  spec.version               = JekyllHighlight::VERSION

  spec.add_dependency 'jekyll', '>= 3.5.0'
  spec.add_dependency 'jekyll_plugin_support', '>= 1.0.0'
end

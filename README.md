# `JekyllHighlight` [![Gem Version](https://badge.fury.io/rb/jekyll_highlight.svg)](https://badge.fury.io/rb/jekyll_highlight)

Demo Jekyll tag plugin that shows how to customize a generated Jekyll tag gem.

This plugin would be better implemented as a filter, not a tag.

The original generated output of the [nugem](https://www.mslinn.com/ruby/6700-thor.html) command is provided
as the `original` git branch of this project.
The `nugem` program is still in the early stages of development,
so the `nugem` output has been improved since this project was generated.


## Installation

Add the following to your Jekyll website&rsquo;s `Gemfile`:

```ruby
group :jekyll_plugins do
  gem 'jekyll_highlight'
end
```

And then execute:

```shell
$ bundle
```


## Sample Usage

```html
{% highlight text="highlighted text" %}
{% highlight text="highlighted text" fg_color="red" %}
{% highlight text="highlighted text" fg_color="red" bg_color="grey" %}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `bundle exec rake test` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version, run `bundle exec rake release`,
which will create a git tag for the version, push git commits and tags,
and push the gem to https://rubygems.org.


## Contributing

Bug reports and pull requests are welcome at https://github.com/mslinn/jekyll_highlight.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

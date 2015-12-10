![contracter](assets/Contracter.png)

Contracter is a quality of life gem that provides a simple Domain Specific Language for anyone to use in generating contracts for clients and services from templates. The default template is my personal contract template based on the popular open-source contract available [here](https://stuffandnonsense.co.uk/projects/contract-killer/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'contracter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install contracter

## Usage

First, require the gem:

```ruby
require 'contracter'
```

Then generate a contract by using the Contracter DSL syntax:

```ruby
contract = Contracter.build do
    # Any property can be used here, and will get replaced with the given value in the template where the method name appears in the format [name].
    company 'Test Company Please Ignore'

    # Any property given multiple values will be replaced with the values on separate lines.
    browsers 'Safari', 'Google Chrome'

    # If you would like to use your own template, you may explicitly pass Contracter the path to it. The template can be in any plain text UTF-8 encoded format.
    template_path 'path/to/your/template.txt'
end
```

The contract will be built from the template and returned as a Markdown-formatted string.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/remi-gelinas/contracter.

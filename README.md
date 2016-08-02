# Native

Installs OS-specific packages required to run your gems.

Inspired by [Natives](https://github.com/teohm/natives) gem by @teohm.

Native anonymously communicates with a remote server to determine the required
native dependencies for your gems. No data is sent or collected without your
approval.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'native'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install native

## Usage

Before running `bundle install`, Run:

    $ native

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/owahab/native.

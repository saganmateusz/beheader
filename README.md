# Beheader

This gems aims to provide a simple yet robust tool for link shortening.
I really hate gems that do everything for you though, so I'm leaving some of the implementation to you.
Yes, I trust you that much!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'beheader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install beheader

## Usage

You need a database object holding the original url.
```
Beheader::Cutter.generate_short_url(id)
```
will return a very short string that you can use as a relative url in your app.
```
Beheader::Cutter.recover(short_string)
```
will return the original number that generated the string.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/beheader.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


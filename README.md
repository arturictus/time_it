# TimeIt

Helpers and extensions to improve working with Time.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'time_it'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install time_it

## Usage

**#at**

```ruby
# this is the regular at in Time class
time = Time.at(1463529600)
  # => 2016-05-18 02:00:00 +0200

# This is the extension
time.at(hour: 12)
  # => 2016-05-18 12:00:00 +0200
time.at(hour: 12, min: 40)
  # => 2016-05-18 12:40:00 +0200

# original instance is not modified
time
  # => 2016-05-18 02:00:00 +0200
```
**#to_h**

```ruby
# this is the regular at in Time class
time = Time.at(1463529600)
  # => 2016-05-18 02:00:00 +0200

# This is the extension
time.to_h
  # => {:sec=>0, :min=>0, :hour=>2, :day=>18, :month=>5, :year=>2016, :wday=>3, :yday=>139, :isdst=>true, :zone=>"CEST"}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/time_it.

# Tuneup Technology App Ruby Client Library

The Ruby client library for the Tuneup Technology App.

[![Build Status](https://github.com/tuneuptechnology/tuneuptechnology-ruby/workflows/build/badge.svg)](https://github.com/tuneuptechnology/tuneuptechnology-ruby/actions)
[![Coverage Status](https://coveralls.io/repos/github/tuneuptechnology/tuneuptechnology-ruby/badge.svg?branch=main)](https://coveralls.io/github/tuneuptechnology/tuneuptechnology-ruby?branch=main)
[![RubyGems](https://img.shields.io/gem/v/tuneuptechnology)](https://rubygems.org/gems/tuneuptechnology)
[![Licence](https://img.shields.io/github/license/tuneuptechnology/tuneuptechnology-ruby)](LICENSE)

This library allows you to interact with the customers, tickets, inventory, and locations objects without needing to do the hard work of binding your calls and data to endpoints. Simply call an action such as `Customer.create` and pass some data and let the library do the rest.

## Install

```bash
# Install the client library
gem install tuneuptechnology
```

## Example

```ruby
require 'tuneuptechnology'

client = TuneupTechnology::Client.new ENV['API_EMAIL'], ENV['API_KEY']

customer = client.customers.create(
  {
    'firstname' => 'Jake',
    'lastname' => 'Peralta',
    'email' => 'jake@example.com',
    'phone' => '8015551234',
    'user_id' => 1,
    'notes' => 'Believes he is a good detective.',
    'location_id' => 2
  }
)

puts customer
```

Other examples can be found in the `/examples` directory. Alter according to your needs.

## Usage

```bash
API_EMAIL=email@example.com API_KEY=123... ruby create_customer.rb
```

## Documentation

Up-to-date API documentation can be [found here](https://app.tuneuptechnology.com/docs/api).

## Development

```bash
# Install locally
bundle install

# Lint project
rubocop

# Run tests
bundle exec rspec
```

## Releasing

As a separate PR from the feature/bug PR:

1. Update the version string in `tuneuptechnology.rb` and `tuneuptechnology.gemspec` files
1. Update `CHANGELOG`
1. Create a GitHub tag with proper Ruby version semantics (eg: v1.0.0)
1. Publish to RubyGems

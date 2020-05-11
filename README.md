# Tuneup Technology App Ruby Client Library

The Ruby client library for the Tuneup Technology App.

[![Build Status](https://travis-ci.com/ncr4/tuneuptechnology-ruby.svg?branch=master)](https://travis-ci.com/ncr4/tuneuptechnology-ruby)
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)

This library allows you to interact with the customers, tickets, inventory, and locations objects without needing to do the hard work of binding your calls and data to endpoints. Simply call an action such as `Customer.create` and pass some data and let the library do the rest.

## Install

```bash
gem install tuneuptechnology
```

## Example

```ruby
require 'tuneuptechnology'

data = {
    'auth' => ENV['AUTH'],
    'api_key' => ENV['API_KEY'],
    'firstname' => 'Jake',
    'lastname' => 'Peralta',
    'email' => 'jake@example.com',
    'phone' => '8015551234',
    'user_id' => 1,
    'notes' => 'Believes he is a good detective.',
    'location_id' => 1,
}

customer = TuneupTechnology::Customer.create(data)

puts customer
```

Other examples can be found in the `/examples` directory. Alter according to your needs.

## Usage

```bash
AUTH=email@example.com API_KEY=123... ruby create_customer.rb
```

## Documentation

Up-to-date API documentation can be [found here](https://app.tuneuptechnology.com/docs/api).

## Releasing

As a separate PR from the feature/bug PR:

1. Update the version string in `tuneuptechnology.rb` and `tuneuptechnology.gemspec` files
1. Update `CHANGELOG`
1. Create a GitHub tag with proper Ruby version semantics (eg: v1.0.0)
1. Publish the Ruby Gem

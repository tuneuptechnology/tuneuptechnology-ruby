# frozen_string_literal: true

require 'tuneuptechnology'

client = TuneupTechnology::Client.new(ENV['API_EMAIL'], ENV['API_KEY'])

location = client.locations.update(
  23,
  {
    name: 'Location Name',
    street: '123 California Ave',
    city: 'Salt Lake',
    state: 'UT',
    zip: '84043',
  }
)

puts location

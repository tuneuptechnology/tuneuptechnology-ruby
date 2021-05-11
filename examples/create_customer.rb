# frozen_string_literal: true

require_relative 'tuneuptechnology'

client = TuneupTechnology::Client.new(ENV['API_EMAIL'], ENV['API_KEY'])

customer = client.customers.create(
  {
    firstname: 'Jake',
    lastname: 'Peralta',
    email: 'jake@example.com',
    phone: '8015551234',
    user_id: 1,
    notes: 'Believes he is a good detective.',
    location_id: 2
  }
)

puts customer

# frozen_string_literal: true

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
  'location_id' => 1
}

customer = TuneupTechnology::Customer.create(data)

puts customer

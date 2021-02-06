# frozen_string_literal: true

require 'tuneuptechnology'

data = {
  'auth' => ENV['API_EMAIL'],
  'api_key' => ENV['API_KEY'],
  'id' => 1 # the ID of the customer you are deleting
}

customer = TuneupTechnology::Customer.retrieve(data)

puts customer

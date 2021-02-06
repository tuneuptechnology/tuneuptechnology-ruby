# frozen_string_literal: true

require 'tuneuptechnology'

data = {
  'auth' => ENV['API_EMAIL'],
  'api_key' => ENV['API_KEY']
}

customers = TuneupTechnology::Customer.all(data)

puts customers

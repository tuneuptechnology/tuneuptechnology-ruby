# frozen_string_literal: true

require 'tuneuptechnology'

client = TuneupTechnology::Client.new(ENV['API_EMAIL'], ENV['API_KEY'])

customers = client.customers.all

puts customers

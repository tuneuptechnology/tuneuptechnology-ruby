# frozen_string_literal: true

require 'tuneuptechnology'

client = TuneupTechnology::Client.new(ENV['API_EMAIL'], ENV['API_KEY'])

location = client.locations.retrieve(23)

puts location

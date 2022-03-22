# frozen_string_literal: true

require 'tuneuptechnology'

client = TuneupTechnology::Client.new(ENV['API_EMAIL'], ENV['API_KEY'])

ticket = client.tickets.create(
  {
    customer_id: 1,
    ticket_type_id: 1,
    serial: '10000',
    user_id: 1,
    notes: 'here are some notes',
    title: 'Fancy Title',
    status: 1,
    device: '2',
    imei: 10000,
    location_id: 1
  }
)

puts ticket

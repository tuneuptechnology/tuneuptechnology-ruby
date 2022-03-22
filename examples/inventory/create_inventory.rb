# frozen_string_literal: true

require 'tuneuptechnology'

client = TuneupTechnology::Client.new(ENV['API_EMAIL'], ENV['API_KEY'])

inventory = client.inventory.create(
  {
    name: 'Inventory Item',
    inventory_type_id: 1,
    part_number: '1234',
    sku: '1234',
    notes: 'here are some notes',
    part_price: 19.99,
    location_id: 1,
    quantity: 1
  }
)

puts inventory

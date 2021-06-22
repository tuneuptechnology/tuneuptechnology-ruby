# frozen_string_literal: true

require 'rubygems'
require 'vcr'
require_relative 'spec_helper'
require_relative '../lib/tuneuptechnology'

RSpec.describe 'inventory' do
  it 'creates an inventory record' do
    VCR.use_cassette('inventory/create') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.create(
        {
          name: 'Inventory Item',
          inventory_type_id: 1,
          part_number: '1234',
          sku: '1234',
          notes: 'here are some notes',
          part_price: '19.99',
          location_id: 2,
          quantity: 1
        }
      )

      expect(response['name']).to eq 'Inventory Item'
    end
  end

  it 'retrieves an inventory record' do
    VCR.use_cassette('inventory/retrieve') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.retrieve(1)

      expect(response['name']).not_to be nil
    end
  end

  it 'retrieves all inventory' do
    VCR.use_cassette('inventory/all') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.all

      expect(response['data'].length).to be > 1
    end
  end

  it 'updates an inventory record' do
    VCR.use_cassette('inventory/update') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.update(
        1,
        {
          name: 'Inventory Item',
          inventory_type_id: 1,
          part_number: '1234',
          sku: '1234',
          notes: 'here are some notes',
          part_price: '19.99',
          location_id: 2,
          quantity: 1
        }
      )

      expect(response['name']).to eq 'Inventory Item'
    end
  end

  it 'deletes an inventory record' do
    VCR.use_cassette('inventory/delete') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.delete(1)

      expect(response['deleted_at']).not_to be nil
    end
  end
end

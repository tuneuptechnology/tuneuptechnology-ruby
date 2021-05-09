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
          part_price: 19.99,
          location_id: 2,
          quantity: 1
        }
      )

      expect(response.code).to eq 200
    end
  end

  it 'retrieves an inventory record' do
    VCR.use_cassette('inventory/retrieve') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.retrieve(ID)

      expect(response.code).to eq 200
    end
  end

  it 'retrieves all inventory' do
    VCR.use_cassette('inventory/all') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.all

      expect(response.code).to eq 200
    end
  end

  it 'updates an inventory record' do
    VCR.use_cassette('inventory/update') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.update(
        ID,
        {
          name: 'Inventory Item',
          inventory_type_id: 1,
          part_number: '1234',
          sku: '1234',
          notes: 'here are some notes',
          part_price: 19.99,
          location_id: 2,
          quantity: 1
        }
      )

      expect(response.code).to eq 200
    end
  end

  it 'deletes an inventory record' do
    VCR.use_cassette('inventory/delete') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.inventory.delete(ID)

      expect(response.code).to eq 200
    end
  end
end

# frozen_string_literal: true

require 'rubygems'
require 'vcr'
require_relative 'spec_helper'
require_relative '../lib/tuneuptechnology'

RSpec.describe 'tickets' do
  it 'creates a ticket' do
    VCR.use_cassette('tickets/create') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.tickets.create(
        {
          'customer_id': 2,
          'ticket_type_id': 1,
          'serial': '10000',
          'user_id': 1,
          'notes': 'here are some notes',
          'title': 'Fancy Title',
          'status': 1,
          'device': '2',
          'imei': 10000,
          'location_id': 2
        }
      )

      expect(response.code).to eq 200
    end
  end

  it 'retrieves a ticket' do
    VCR.use_cassette('tickets/retrieve') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.tickets.retrieve(ID)

      expect(response.code).to eq 200
    end
  end

  it 'retrieves all tickets' do
    VCR.use_cassette('tickets/all') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.tickets.all()

      expect(response.code).to eq 200
    end
  end

  it 'updates a ticket' do
    VCR.use_cassette('tickets/update') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.tickets.update(
        id = ID,
        data = {
          'customer_id': 2,
          'ticket_type_id': 1,
          'serial': '10000',
          'user_id': 1,
          'notes': 'here are some notes',
          'title': 'Fancy Title',
          'status': 1,
          'device': '2',
          'imei': 10000,
          'location_id': 2
        }
      )

      expect(response.code).to eq 200
    end
  end

  it 'deletes a ticket' do
    VCR.use_cassette('tickets/delete') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.tickets.delete(ID)

      expect(response.code).to eq 200
    end
  end
end

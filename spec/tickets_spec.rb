# frozen_string_literal: true

require 'vcr'
require_relative '../lib/tuneuptechnology'
require_relative 'spec_helper'

RSpec.describe 'tickets' do
  it 'creates a ticket' do
    VCR.use_cassette('tickets/create') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.tickets.create(
        {
          customer_id: 2,
          ticket_type_id: 1,
          serial: '10000',
          user_id: 1,
          notes: 'here are some notes',
          title: 'Fancy Title',
          status: 1,
          device: 'iPhone',
          imei: 10000,
          location_id: 2
        }
      )

      expect(response['title']).to eq 'Fancy Title'
    end
  end

  it 'retrieves a ticket' do
    VCR.use_cassette('tickets/retrieve') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.tickets.retrieve(1)

      expect(response['title']).not_to be nil
    end
  end

  it 'retrieves all tickets' do
    VCR.use_cassette('tickets/all') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.tickets.all

      expect(response['data'].length).to be > 1
    end
  end

  it 'updates a ticket' do
    VCR.use_cassette('tickets/update') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.tickets.update(
        1,
        {
          customer_id: 2,
          ticket_type_id: 1,
          serial: '10000',
          user_id: 1,
          notes: 'here are some notes',
          title: 'Fancy Title',
          status: 1,
          device: 'iPhone',
          imei: 10_000,
          location_id: 2
        }
      )

      expect(response['title']).to eq 'Fancy Title'
    end
  end

  it 'deletes a ticket' do
    VCR.use_cassette('tickets/delete') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.tickets.delete(1)

      expect(response['deleted_at']).not_to be nil
    end
  end
end

# frozen_string_literal: true

require 'vcr'
require_relative '../lib/tuneuptechnology'
require_relative 'spec_helper'

RSpec.describe 'customers' do
  it 'creates a customer' do
    VCR.use_cassette('customers/create') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.customers.create(
        {
          firstname: 'Jake',
          lastname: 'Peralta',
          email: 'jake@example.com',
          phone: '8015551234',
          user_id: 1,
          notes: 'Believes he is a good detective.',
          location_id: 2
        }
      )

      expect(response['firstname']).to eq 'Jake'
    end
  end

  it 'retrieves a customer' do
    VCR.use_cassette('customers/retrieve') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.customers.retrieve(1)

      expect(response['firstname']).not_to be nil
    end
  end

  it 'retrieves all customers' do
    VCR.use_cassette('customers/all') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.customers.all

      expect(response['data'].length).to be > 1
    end
  end

  it 'updates a customer' do
    VCR.use_cassette('customers/update') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.customers.update(
        1,
        {
          firstname: 'Jake',
          lastname: 'Peralta',
          email: 'jake@example.com',
          phone: '8015551234',
          user_id: 1,
          notes: 'Believes he is a good detective.',
          location_id: 2
        }
      )

      expect(response['firstname']).to eq 'Jake'
    end
  end

  it 'deletes a customer' do
    VCR.use_cassette('customers/delete') do
      client = TuneupTechnology::Client.new(API_EMAIL, API_KEY, BASE_URL)
      response = client.customers.delete(1)

      expect(response['deleted_at']).not_to be nil
    end
  end
end

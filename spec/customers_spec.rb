# frozen_string_literal: true

require 'rubygems'
require 'vcr'
require_relative 'spec_helper'
require_relative '../lib/tuneuptechnology'

RSpec.describe 'locations' do
  it 'creates a location' do
    VCR.use_cassette('locations/create') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.locations.create(
        {
          'name': 'Location Name',
          'street': '123 California Ave',
          'city': 'Salt Lake',
          'state': 'UT',
          'zip': 84043
        }
      )

      expect(response.code).to eq 200
    end
  end

  it 'retrieves a location' do
    VCR.use_cassette('locations/retrieve') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.locations.retrieve(ID)

      expect(response.code).to eq 200
    end
  end

  it 'retrieves all locations' do
    VCR.use_cassette('locations/all') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.locations.all()

      expect(response.code).to eq 200
    end
  end

  it 'updates a location' do
    VCR.use_cassette('locations/update') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.locations.update(
        id = ID,
        data = {
          'name': 'Location Name',
          'street': '123 California Ave',
          'city': 'Salt Lake',
          'state': 'UT',
          'zip': 84043
        }
      )

      expect(response.code).to eq 200
    end
  end

  it 'deletes a location' do
    VCR.use_cassette('locations/delete') do
      client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
      response = client.locations.delete(ID)

      expect(response.code).to eq 200
    end
  end
end

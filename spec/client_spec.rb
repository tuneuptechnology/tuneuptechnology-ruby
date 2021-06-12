# frozen_string_literal: true

require 'rubygems'
require_relative 'spec_helper'
require_relative '../lib/tuneuptechnology'

RSpec.describe 'client' do
  it 'raises an error when no email or api_key is passed' do
    expect { TuneupTechnology::Client.new nil, nil, BASE_URL }.to raise_error(NameError)
  end

  it 'mocks an error with the RestClient' do
    allow(RestClient::Request).to receive(:execute).and_raise(RestClient::ExceptionWithResponse)

    client = TuneupTechnology::Client.new API_EMAIL, API_KEY, BASE_URL
    client.locations.retrieve(1)
    expect { RestClient::Request.execute }.to raise_error(RestClient::ExceptionWithResponse)
  end
end

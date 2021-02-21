# frozen_string_literal: true

require 'rest-client'
require 'json'

# Tuneup Technology Resources
require 'tuneuptechnology/customer'
require 'tuneuptechnology/inventory'
require 'tuneuptechnology/location'
require 'tuneuptechnology/ticket'

module TuneupTechnology
  # Build the HTTP client for the library
  class Client
    @base_url = 'https://app.tuneuptechnology.com/api'
    class << self
      attr_reader :base_url
    end

    @version = '1.2.0'
    class << self
      attr_reader :version
    end

    @headers = {
      'Content-Type' => 'application/json',
      'User-Agent' => "TuneupTechnologyApp/RubyClient/#{Client.version}"
    }
    class << self
      attr_reader :headers
    end

    def self.make_http_request(data, endpoint)
      response = RestClient.post(endpoint, data.to_json, headers, timeout: 10)
      JSON.pretty_generate(JSON.parse(response))
    end
  end
end

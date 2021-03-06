# frozen_string_literal: true

require 'rest-client'
require 'json'

module TuneupTechnology
  # The Client initializes everything needed to use this client library
  class Client
    attr_reader :email, :api_key, :base_url, :timeout, :version, :headers

    def initialize(email = nil, api_key = nil, base_url = 'https://app.tuneuptechnology.com/api', timeout = 10)
      @@email = email
      @@api_key = api_key
      @base_url = base_url
      @timeout = timeout
      @version = '2.0.0'

      raise NameError, 'email and api_key are required to create a Client.' if @@email.nil? || @@api_key.nil?
    end

    def customers
      TuneupTechnology::Customers.new(@base_url, :make_http_request)
    end

    def inventory
      TuneupTechnology::Inventory.new(@base_url, :make_http_request)
    end

    def locations
      TuneupTechnology::Locations.new(@base_url, :make_http_request)
    end

    def tickets
      TuneupTechnology::Tickets.new(@base_url, :make_http_request)
    end

    # Build the HTTP client for the library
    def self.make_http_request(method, endpoint, data = nil)
      headers = {
        'Accept' => 'application/json',
        'User-Agent' => "TuneupTechnologyApp/RubyClient/#{@version}",
        'Email' => @@email,
        'Api-Key' => @@api_key
      }

      begin
        response = RestClient::Request.execute(
          method: method,
          url: endpoint,
          payload: data.to_json,
          headers: headers,
          timeout: @timeout
        )

        JSON.parse(response.body)
      rescue RestClient::ExceptionWithResponse => e
        e.response
      end
    end
  end
end

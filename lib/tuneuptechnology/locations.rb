# frozen_string_literal: true

module TuneupTechnology
  # The Locations object
  class Locations < Client
    attr_reader :base_url, :make_http_request

    def initialize(base_url, make_http_request)
      @base_url = base_url
      @make_http_request = make_http_request
    end

    # Create a location
    def create(data)
      endpoint = "#{@base_url}/locations"
      Client.make_http_request('post', endpoint, data)
    end

    # Retrieve all location records
    def all
      endpoint = "#{@base_url}/locations"
      Client.make_http_request('get', endpoint)
    end

    # Retrieve a single location record
    def retrieve(id)
      endpoint = "#{@base_url}/locations/#{id}"
      Client.make_http_request('get', endpoint)
    end

    # Update a location record
    def update(id, data)
      endpoint = "#{@base_url}/locations/#{id}"
      Client.make_http_request('patch', endpoint, data)
    end

    # Delete a location record
    def delete(id)
      endpoint = "#{@base_url}/locations/#{id}"
      Client.make_http_request('delete', endpoint)
    end
  end
end

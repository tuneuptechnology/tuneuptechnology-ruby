# frozen_string_literal: true

module TuneupTechnology
  # Methods for the Location object
  class Location
    # Create a location
    def self.create(data)
      endpoint = "#{Client.base_url}/locations/create"
      Client.make_http_request(data, endpoint)
    end

    # Retrieve all location records
    def self.all(data)
      endpoint = "#{Client.base_url}/locations"
      Client.make_http_request(data, endpoint)
    end

    # Retrieve a single location record
    def self.retrieve(data)
      endpoint = "#{Client.base_url}/locations/#{data['id']}"
      Client.make_http_request(data, endpoint)
    end

    # Update a location record
    def self.update(data)
      endpoint = "#{Client.base_url}/locations/#{data['id']}/update"
      Client.make_http_request(data, endpoint)
    end

    # Delete a location record
    def self.delete(data)
      endpoint = "#{Client.base_url}/locations/#{data['id']}/delete"
      Client.make_http_request(data, endpoint)
    end
  end
end

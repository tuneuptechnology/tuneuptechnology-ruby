# frozen_string_literal: true

module TuneupTechnology
  # Methods for the Customer object
  class Customer
    # Create a customer
    def self.create(data)
      endpoint = "#{Client.base_url}/customers/create"
      Client.make_http_request(data, endpoint)
    end

    # Retrieve all customer records
    def self.all(data)
      endpoint = "#{Client.base_url}/customers"
      Client.make_http_request(data, endpoint)
    end

    # Retrieve a single customer record
    def self.retrieve(data)
      endpoint = "#{Client.base_url}/customers/#{data['id']}"
      Client.make_http_request(data, endpoint)
    end

    # Update a customer record
    def self.update(data)
      endpoint = "#{Client.base_url}/customers/#{data['id']}/update"
      Client.make_http_request(data, endpoint)
    end

    # Delete a customer record
    def self.delete(data)
      endpoint = "#{Client.base_url}/customers/#{data['id']}/delete"
      Client.make_http_request(data, endpoint)
    end
  end
end

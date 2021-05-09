# frozen_string_literal: true

module TuneupTechnology
  # The Customers object
  class Customers < Client
    attr_reader :base_url, :make_http_request

    def initialize(base_url, make_http_request)
      @base_url = base_url
      @make_http_request = make_http_request
    end

    # Create a customer
    def create(data)
      endpoint = "#{@base_url}/customers"
      Client.make_http_request('post', endpoint, data)
    end

    # Retrieve all customer records
    def all
      endpoint = "#{@base_url}/customers"
      Client.make_http_request('get', endpoint)
    end

    # Retrieve a single customer record
    def retrieve(id)
      endpoint = "#{@base_url}/customers/#{id}"
      Client.make_http_request('get', endpoint)
    end

    # Update a customer record
    def update(id, data)
      endpoint = "#{@base_url}/customers/#{id}"
      Client.make_http_request('patch', endpoint, data)
    end

    # Delete a customer record
    def delete(id)
      endpoint = "#{@base_url}/customers/#{id}"
      Client.make_http_request('delete', endpoint)
    end
  end
end

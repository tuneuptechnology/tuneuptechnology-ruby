# frozen_string_literal: true

module TuneupTechnology
  # The Inventory object
  class Inventory < Client
    attr_reader :base_url, :make_http_request

    def initialize(base_url, make_http_request)
      @base_url = base_url
      @make_http_request = make_http_request
    end

    # Create an inventory record
    def create(data)
      endpoint = "#{@base_url}/inventory"
      Client.make_http_request('post', endpoint, data)
    end

    # Retrieve all inventory records
    def all
      endpoint = "#{@base_url}/inventory"
      Client.make_http_request('get', endpoint)
    end

    # Retrieve a single inventory record
    def retrieve(id)
      endpoint = "#{@base_url}/inventory/#{id}"
      Client.make_http_request('get', endpoint)
    end

    # Update an inventory record
    def update(id, data)
      endpoint = "#{@base_url}/inventory/#{id}"
      Client.make_http_request('patch', endpoint, data)
    end

    # Delete an inventory record
    def delete(id)
      endpoint = "#{@base_url}/inventory/#{id}"
      Client.make_http_request('delete', endpoint)
    end
  end
end

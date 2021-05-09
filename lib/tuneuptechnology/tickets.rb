# frozen_string_literal: true

module TuneupTechnology
  class Tickets < Client
    attr_reader :base_url, :make_http_request

    def initialize(base_url, make_http_request)
      @base_url = base_url
      @make_http_request = make_http_request
    end

    # Create a ticket
    def create(data)
      endpoint = "#{@base_url}/tickets"
      Client.make_http_request('post', endpoint, data)
    end

    # Retrieve all ticket records
    def all
      endpoint = "#{@base_url}/tickets"
      Client.make_http_request('get', endpoint)
    end

    # Retrieve a single ticket record
    def retrieve(id)
      endpoint = "#{@base_url}/tickets/#{id}"
      Client.make_http_request('get', endpoint)
    end

    # Update a ticket record
    def update(id, data)
      endpoint = "#{@base_url}/tickets/#{id}"
      Client.make_http_request('patch', endpoint, data)
    end

    # Delete a ticket record
    def delete(id)
      endpoint = "#{@base_url}/tickets/#{id}"
      Client.make_http_request('delete', endpoint)
    end
  end
end

# frozen_string_literal: true

module TuneupTechnology
  # Methods for the Inventory object
  class Inventory
    # Create an inventory item
    def self.create(data)
      endpoint = "#{Client.base_url}/inventory/create"
      Client.make_http_request(data, endpoint)
    end

    # Retrieve all inventory records
    def self.all(data)
      endpoint = "#{Client.base_url}/inventory"
      Client.make_http_request(data, endpoint)
    end

    # Retrieve a single inventory record
    def self.retrieve(data)
      endpoint = "#{Client.base_url}/inventory/#{data['id']}"
      Client.make_http_request(data, endpoint)
    end

    # Update an inventory record
    def self.update(data)
      endpoint = "#{Client.base_url}/inventory/#{data['id']}/update"
      Client.make_http_request(data, endpoint)
    end

    # Delete an inventory record
    def self.delete(data)
      endpoint = "#{Client.base_url}/inventory/#{data['id']}/delete"
      Client.make_http_request(data, endpoint)
    end
  end
end

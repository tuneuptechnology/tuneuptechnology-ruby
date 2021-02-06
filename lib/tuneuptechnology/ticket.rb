# frozen_string_literal: true

module TuneupTechnology
  # Methods for the Ticket object
  class Ticket
    # Create a ticket
    def self.create(data)
      endpoint = "#{Client.base_url}/tickets/create"
      Client.post(data, endpoint)
    end

    # Retrieve all ticket records
    def self.all(data)
      endpoint = "#{Client.base_url}/tickets"
      Client.post(data, endpoint)
    end

    # Retrieve a single ticket record
    def self.retrieve(data)
      endpoint = "#{Client.base_url}/tickets/#{data['id']}"
      Client.post(data, endpoint)
    end

    # Update a ticket record
    def self.update(data)
      endpoint = "#{Client.base_url}/tickets/#{data['id']}/update"
      Client.post(data, endpoint)
    end

    # Delete a ticket record
    def self.delete(data)
      endpoint = "#{Client.base_url}/tickets/#{data['id']}/delete"
      Client.post(data, endpoint)
    end
  end
end

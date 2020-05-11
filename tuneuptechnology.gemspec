# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = 'tuneuptechnology'
  spec.version      = '1.0.0'
  spec.date         = '2020-05-11'
  spec.summary      = 'The Ruby client library for the Tuneup Technology App.'
  spec.description  = 'This library allows you to interact with the customers,
    tickets, inventory, and locations objects without needing to do the hard
    work of binding your calls and data to endpointspec. Simply call an action
    such as `Customer.create` and pass some data and let the library do
    the rest.'
  spec.authors      = ['NCR4']
  spec.email        = 'justin@ncr4.com'
  spec.files        = Dir.glob('{bin,lib}/**/*')
  spec.homepage     = 'https://github.com/ncr4/tuneuptechnology-ruby'
  spec.license      = 'MIT'
  spec.add_dependency 'rest-client', '>= 2.1.0'
  spec.add_development_dependency 'rubocop', '>= 0.82.0'
end

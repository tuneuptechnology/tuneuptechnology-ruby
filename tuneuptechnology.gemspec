# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name                   = 'tuneuptechnology'
  spec.version                = '2.0.0'
  spec.required_ruby_version  = '>= 2.6'
  spec.date                   = '2020-05-11'
  spec.summary                = 'The Ruby client library for the Tuneup Technology App.'
  spec.description            = 'This library allows you to interact with the customers,
    tickets, inventory, and locations objects without needing to do the hard
    work of binding your calls and data to endpointspec. Simply call an action
    such as `Customer.create` and pass some data and let the library do
    the rest.'
  spec.authors                = ['Tuneup Technology']
  spec.email                  = 'tuneuptechnology@gmail.com'
  spec.files                  = Dir.glob('{bin,lib}/**/*')
  spec.homepage               = 'https://github.com/tuneuptechnology/tuneuptechnology-ruby'
  spec.license                = 'MIT'
  spec.add_dependency 'rest-client', '>= 2.1.0'
  spec.add_development_dependency 'rspec', '>= 3.10.0'
  spec.add_development_dependency 'rubocop', '>= 0.82.0'
  spec.add_development_dependency 'simplecov', '>= 0.21.0'
  spec.add_development_dependency 'vcr', '>= 6.0.0'
  spec.add_development_dependency 'webmock', '>= 3.12.0'
end

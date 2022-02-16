# frozen_string_literal: true

require 'vcr'
require 'simplecov'
require 'simplecov-lcov'

SimpleCov::Formatter::LcovFormatter.config do |config|
  config.report_with_single_file = true
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::LcovFormatter
  ]
)

SimpleCov.start do
  track_files 'lib/**/*.rb'
  enable_coverage :branch
end

API_EMAIL = ENV['API_EMAIL'] ||= 'mock@example.com'
API_KEY = ENV['API_KEY'] ||= '1234567890'
BASE_URL = 'http://tuneapp.localhost/api'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :webmock
  config.filter_sensitive_data('<API_EMAIL>') { API_EMAIL }
  config.filter_sensitive_data('<API_KEY>') { API_KEY }
end

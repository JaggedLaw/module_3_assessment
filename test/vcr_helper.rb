require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'test/vcr'
  config.hook_into :faraday
end

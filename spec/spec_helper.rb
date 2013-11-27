require 'json'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

require 'phax'

# Test Creds
Phax.configure do |c|
  c.api_key = 'a3902ac63568c1502165652236ed8956d645be9c'
  c.api_secret = '72a1d647f65f76b2b9be9bcdeb05f0832694bba9'
end

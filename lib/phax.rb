require 'faraday'
require 'phax/support/environment_configurable'
require 'phax/version'
require 'phax/request'

# A ruby client for the Phaxio API
module Phax
  include Support::EnvironmentConfigurable

  config_env_accessor :api_key, env: 'PHAXIO_KEY'
  config_env_accessor :api_secret, env: 'PHAXIO_SECRET'
  config_accessor     :max_per_page do
    50
  end

  class << self
    # Send a fax.
    def fax(options)
    end

    def get(fax_id, type: nil)
    end

    def list(start_time, end_time, page: nil, max_per_page: nil)
    end

    def status(fax_id)
    end

    def cancel(fax_id)
    end
  end
end

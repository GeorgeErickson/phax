require 'faraday'
require 'faraday_middleware'
require 'phax/support/environment_configurable'
require 'phax/version'
require 'phax/response/phaxio_error'
require 'phax/api/send'

module Phax
  include Support::EnvironmentConfigurable
  extend Api::Send

  config_env_accessor :api_key, env: 'PHAXIO_KEY'
  config_env_accessor :api_secret, env: 'PHAXIO_SECRET'
  config_accessor     :max_per_page do
    50
  end

  class << self
    def normalize_phone(phone)
      digits = phone.gsub(/[^0-9]/, '')
      digits.prepend '1' unless digits[0] == '1'
      digits
    end

    def faraday
      @connection ||= Faraday.new(url: 'https://api.phaxio.com/') do |c|
        c.request :url_encoded
        c.use Phax::Response::PhaxioError
        c.response :json, content_type: /\bjson$/
        c.use :instrumentation
        c.adapter Faraday.default_adapter
      end
    end

    def request(method, path, params)
      params.merge!(api_key: api_key, api_secret: api_secret)
      faraday.send(method, "/v1/#{path}", params)
    end

    def post(path, params)
      request(:post, path, params)
    end

    def fax_status(fax_id)
      post('faxStatus', id: fax_id)
    end

    def list(start_time, end_time, page = nil, max_per_page = nil)
    end

    def cancel(fax_id)
    end
  end
end

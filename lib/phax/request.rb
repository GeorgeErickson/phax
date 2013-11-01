module Phax
  module Request
    class << self
      def connection
        @connection ||= Faraday.new(url: 'https://api.phaxio.com/v1') do
          faraday.adapter  Faraday.default_adapter
        end
      end
    end
  end
end

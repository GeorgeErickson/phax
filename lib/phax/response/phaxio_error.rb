require 'faraday'
require 'phax/error'

module Phax
  module Response
    class PhaxioError < Faraday::Response::Middleware
      private

      def on_complete(response)
        error = Phax::Error.from_response(response)
        fail error if error
      end
    end
  end
end

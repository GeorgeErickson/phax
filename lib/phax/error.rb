module Phax
  # phaxio.com/docs/errors
  module Error
    def self.from_response(res)
      RequestError.new(res) unless res[:body]['success']
    end

    class RequestError < StandardError
      def initialize(response)
        @response = response
      end

      def message
        @response[:body]['message']
      end
    end

    class DocumentConversionError < StandardError
    end

    class LineError < StandardError
    end

    class FaxError < StandardError
    end

    class FatalError < StandardError
    end

    class GeneralError < StandardError
    end
  end
end

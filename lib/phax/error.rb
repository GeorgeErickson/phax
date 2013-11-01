module Phax
  # phaxio.com/docs/errors
  module Error

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

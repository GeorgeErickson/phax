module Phax
  module Api
    module Send
      def fax(options)
        request(:post, :send, options)
      end

      def fax_html(to, string_data, options)
      end

      def fax_url(options)
      end

      def fax_file(options)
      end
    end
  end
end

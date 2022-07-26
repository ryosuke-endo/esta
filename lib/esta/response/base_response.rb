module Esta
  module Response
    class ::BaseResponse
      def initialize(response)
        @response = response
      end

      def body
        @response.body
      end

      # see https://www.e-stat.go.jp/api/api-info/e-stat-manual3-0#api_4_1
      def http_status
        status = body.dig(root_key, "RESULT", "STATUS")
        case status
        when 0, 1, 2, 301, 302, 400
          200
        when 101, 102, 103, 104, 105, 300
          400
        when 100
          403
        when 200, 201, 202, 203, 299, 303, 401
          500
        end
      end

      def error_msg
        body.dig(root_key, "RESULT", "ERROR_MSG")
      end

      def date
        body.dig(root_key, "RESULT", "DATE")
      end

      private

      def root_key
        raise NotImplementedError
      end
    end
  end
end

module Esta
  module Response
    class StatsListResponse < BaseResponse
      def list
        body.dig(root_key, "DATALIST_INF", "TABLE_INF").map { |data| ESta::Data::StatsList.new(data) }
      end

      def next_number
        body.dig(root_key, "DATALIST_INF", "RESULT_INF", "NEXT_KEY")
      end

      private

      def root_key
        "GET_STATS_LIST"
      end
    end
  end
end

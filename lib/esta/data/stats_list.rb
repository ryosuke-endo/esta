module Esta
  module Data
    class StatsList
      def initialize(data)
        @data = data
      end

      def id
        @data["@id"]
      end

      def stat_name
        @data["STAT_NAME"]
      end

      def gov_org
        @data["GOV_ORG"]
      end

      def statistics_name
        @data["STATISTICS_NAME"]
      end

      def title
        @data["TITLE"]
      end

      def survey_date
        @data["SURVEY_DATE"]
      end

      def open_date
        @data["OPEN_DATE"]
      end

      def small_area
        @data["SMALL_AREA"]
      end

      def collect_area
        @data["COLLECT_AREA"]
      end

      def main_category
        @data["MAIN_CATEGORY"]
      end

      def sub_category
        @data["SUB_CATEGORY"]
      end

      def overall_total_number
        @data["OVERALL_TOTAL_NUMBER"]
      end

      def statistice_name_spec
        @data["STATISTICS_NAME_SPEC"]
      end

      def description
        @data["DESCRIPTION"]
      end

      def title_spec
        @data["TITLE_SPEC"]
      end
    end
  end
end

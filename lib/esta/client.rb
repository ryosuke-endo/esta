module Esta
  class Client
    BASE_URL = "https://api.e-stat.go.jp/rest/".freeze
    VERSION = "3.0".freeze
    URL = "#{BASE_URL}/#{VERSION}/app/json".freeze

    def initialize(appid)
      @appid = appid
    end

    # see: https://www.e-stat.go.jp/api/api-info/e-stat-manual3-0#api_2_1
    def stats_list(options = {})
      response = connection.get("getStatsList?", default_params.merge(options))
      Esta::Response::StatsListResponse.new(response)
    end

    private

    def default_params
      {
        appId: @appid,
        limit: 10
      }
    end

    def connection
      @connection ||= Faraday.new(URL) do |connection|
        connection.response :json
        connection.adapter Faraday.default_adapter
      end
    end
  end
end

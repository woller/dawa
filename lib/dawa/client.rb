require "faraday"
require "faraday_middleware"

module Dawa
  class Client
    BASE_URL = "https://api.dataforsyningen.dk/"

    def self.instance
      @@instance ||= new
    end


    def connection
      @connection  ||= Faraday.new do |connection|
        connection.url_prefix = BASE_URL
        connection.request :json
        connection.response :json, content_type: "application/json"
        connection.adapter adapter
      end
    end

    private

    attr_reader :adapter

    def initialize(adapter: Faraday.default_adapter)
      @adapter = adapter
    end
  end
end

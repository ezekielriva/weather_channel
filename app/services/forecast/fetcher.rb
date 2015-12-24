module Forecast
  # Fetch JSON from forecast api
  class Fetcher
    APP_ID = '2de143494c0b295cca9337e1e96b00e0'
    URL    = 'http://api.openweathermap.org/data/2.5/forecast/daily'

    # @return String
    def self.fetch(place:)
      uri = URI("#{URL}?q=#{place}&units=metric&cnt=16&appid=#{APP_ID}")
      Net::HTTP.get(uri)
    end
  end
end

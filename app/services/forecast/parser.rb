module Forecast
  # Parse each json entry to a Ruby Object
  class Parser
    attr_accessor :city, :days

    def initialize(city:, days:)
      self.city = city
      self.days = days
    end

    def self.parse(json_string)
      json = ::JSON.parse(json_string, quirks_mode: true)

      city = Forecast::Models::City.from_hash json['city']

      days = parsed_days json['list']

      new(city: city, days: days)
    end

    def self.parsed_days(list)
      list.map do |day|
        Forecast::Models::Day.from_hash(day)
      end
    end
  end
end

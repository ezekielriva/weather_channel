module Forecast
  module Models
    # Record City data
    class City < Base
      attr_accessor :id, :name, :cords, :country, :population
    end
  end
end

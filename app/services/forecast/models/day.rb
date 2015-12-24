module Forecast
  module Models
    # Day object
    class Day < Base
      attr_accessor :dt, :temp, :pressure, :humidity, :weather, :speed, :deg,
                    :clouds, :rain

      def date
        Time.at(dt)
      end

      def day
        temp['day']
      end

      def night
        temp['night']
      end

      def max
        temp['max']
      end

      def evening
        temp['eve']
      end

      def morning
        temp['morn']
      end

      def min
        temp['min']
      end
    end
  end
end

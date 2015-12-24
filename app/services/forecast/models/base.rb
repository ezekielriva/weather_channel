module Forecast
  module Models
    # Base Forecast model
    class Base
      def self.from_json(json)
        ::JSON.parse(json, quirks_mode: true)
      end

      def self.from_hash(attributes)
        instance = new
        attributes.each do |attribute, value|
          instance.instance_variable_set("@#{attribute}", value)
        end
        instance
      end
    end
  end
end

class SpeedConverter < ApplicationRecord
    def self.kmh_mph(value)
      value = value.to_f / 1.609
      return value.round(0)
    end
  
    def self.mph_kmh(value)
      value = value.to_f * 1.609
      return value.round(0)
    end
  end
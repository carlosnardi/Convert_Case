class VolumeConverter < ApplicationRecord
    def self.ml_oz(value)
      value = value.to_f
      result = value / 29.574
      return result.round(2)
    end
    def self.oz_ml(value)    
      value = value.to_f
      result = value * 29.574
      return result.round(2)
    end
  end
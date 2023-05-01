class TemperatureConvert < ApplicationRecord 
    def self.c_f(value)
      value = value.to_f
      result = (value * 1.8) + 32
      return result.round(1)
    end
  
    def self.f_c(value)
      value = value.to_f
      result = (value - 32) / 1.8
      return result.round(1)
    end
  end
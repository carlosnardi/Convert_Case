class TemperaturesController < ApplicationController 
    def index
      if params[:value].present?
        @c_f = TemperatureConvert.c_f(params[:value])
        @f_c = TemperatureConvert.f_c(params[:value])
      end
    end
  end
class SpeedsController < ApplicationController
    def index
      if params[:value].present?
        @kmh_mph = SpeedConverter.kmh_mph(params[:value])
        @mph_kmh = SpeedConverter.mph_kmh(params[:value])
      end
    end
  end
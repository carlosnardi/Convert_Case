class VolumesController < ApplicationController
    def index
      if params[:text].present?
        @ml_oz = VolumeConverter.ml_oz(params[:text])
        @oz_ml = VolumeConverter.oz_ml(params[:text])
      end
    end
  end
class ConverterController < ApplicationController
    def index
      if params[:text].present?
        @upcase_text = TextConverter.upcase_text(params[:text])
      end
    end
end

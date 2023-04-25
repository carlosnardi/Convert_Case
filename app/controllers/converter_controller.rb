class ConverterController < ApplicationController
    def index
      if params[:text].present?
        @length_text = TextConverter.text_length(params[:text])
        @words_text = TextConverter.text_words(params[:text])
        @upcase_text = TextConverter.upcase_text(params[:text])
        @downcase_text = TextConverter.downcase_text(params[:text])
      end
    end
end

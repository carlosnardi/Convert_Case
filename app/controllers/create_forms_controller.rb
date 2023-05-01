class CreateFormsController < ApplicationController
    def index
      if params[:title].present? && params[:title_text].present? && params[:radio1_label].present? && params[:radio2_label].present?
        @result = CreateForm.create(params[:title], params[:title_text], params[:radio1_label], params[:radio2_label])
      end
    end
  end
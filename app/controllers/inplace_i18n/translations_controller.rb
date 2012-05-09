module InplaceI18n
  class TranslationsController < ApplicationController

    before_filter :set_language

    def show
      value = Translation.all(@language).find_by_path(params[:path])
      render :text => value
    end

    def update
      Translation.update_by_path(@language, params[:path], params[:value])
      I18n.reload!
      render :text => "OK"
    end

    private

    def set_language
      @language = params[:path].split(".").first if not params[:path].nil?
    end

  end

end
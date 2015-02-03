class ApplicationController < ActionController::Base
  class << self
    alias_method :before_action, :before_filter
    alias_method :around_action, :around_filter
    alias_method :after_action,  :after_filter

    alias_method :skip_before_action, :skip_before_filter
  end


  protect_from_forgery

  include TheRole::Controller

    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    protect_from_forgery
    before_filter :set_locale

    private

    def set_locale
      locale = 'en'
      langs  = %w{ en ru es pl zh_CN }

      if params[:locale]
        lang = params[:locale]
        if langs.include? lang
          locale           = lang
          cookies[:locale] = lang
        end
      else
        if cookies[:locale]
          lang   = cookies[:locale]
          locale = lang if langs.include? lang
        end
      end

      I18n.locale = locale
      redirect_to(:back) if params[:locale]
    end
end

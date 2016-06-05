class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :set_locale

private 


  def set_locale

    I18n.locale = params[:locale] if params[:locale].present?

    case params[:locale]
    when "it"
      @locale_flag = "/assets/flags/it.png"
      @locale_name = "ITALIANO"
      @locale_abbr = "it"
    when "de"
      @locale_flag = "/assets/flags/de.png"
      @locale_name = "DEUTSCH"
      @locale_abbr = "de"
    else
      @locale_flag = "/assets/flags/us.png"
      @locale_name = "ENGLISH"
      @locale_abbr = "en"
    end
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end

end

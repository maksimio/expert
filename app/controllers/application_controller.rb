class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :set_locale

  def pages_of(data, records_per_pages)
    if data.is_a?(Array)
      Kaminari.paginate_array(data).page(params[:page]).per(records_per_pages)
    else
      data.page(params[:page]).per(records_per_pages)
    end
  end

  def extr_locale_in_accept_lang
    locale = params[:locale]
    logger.info "In extr_locale_in_accept_lang: locale = #{locale}"
  end

  private

  def set_locale_from_params
    foo = 0
    return unless params[:locale]

    extr_locale_in_accept_lang
    if I18n.available_locales.include?(params[:locale].to_sym)
      I18n.locale = params[:locale]
      logger.info flash.now[:notice]
    else
      flash.now[:alarm] = " #{params[:locale]} перевод страницы отсутствует"
      logger.error flash.now[:alarm]
    end
    params[:locale]
  end

  def set_locale
    I18n.locale = set_locale_from_params || I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end
end

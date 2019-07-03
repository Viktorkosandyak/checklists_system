class ApplicationController < ActionController::Base
  add_flash_types :success, :warning, :danger, :info, :error

  include Pundit
  protect_from_forgery

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = t('pundit_permition')
    redirect_to(request.referrer || root_path)
  end
end

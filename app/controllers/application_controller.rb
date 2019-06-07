class ApplicationController < ActionController::Base
  add_flash_types :success, :warning, :danger, :info

  include Pundit
  protect_from_forgery

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You don't have  permissions to perform this action."
    redirect_to(request.referrer || root_path)
  end
end

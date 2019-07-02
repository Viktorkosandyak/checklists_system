class Admin::Forms::UnpublishController < Admin::ApplicationController
  before_action :authenticate_user!
  before_action :authorize_policy


  private

  def authorize_policy
    authorize Form
  end
end

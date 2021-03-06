class Admin::Forms::PublishController < Admin::ApplicationController
  before_action :authenticate_user!
  before_action :authorize_policy

  def publisheding
    @form = Form.find(params[:id])
    @form.update_attributes(status: 'published')
    redirect_to admin_forms_path, success: t('form_status_p')
  end

  private

  def authorize_policy
    authorize Form
  end
end

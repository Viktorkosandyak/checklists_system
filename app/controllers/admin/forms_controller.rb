class Admin::FormsController < Admin::ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorize_policy

  def new
    @form = Form.new
    @form.questions.build
  end

  def index
    @forms  = Form.all
  end

  def show
  end

  def create
    @form = Form.new(form_params)
    if @form.save
    redirect_to admin_forms_path, success: "Form successfully create"
    else
      render 'new', danger: "Form not updated"
    end
  end

  def edit
  end

  def update
    if @form.update(form_params)
      redirect_to admin_form_path(@form.id), success: "Form successfully update"
    else
      render 'edit', danger: "Form not updated"
    end
  end

  def destroy
    @form.destroy
    redirect_to admin_forms_path, danger: "Form successfully delete"
  end

  def set_published
    @form = Form.find(params[:id])
    @form.update_attributes(status: 'published')
    redirect_to admin_forms_path, success: "Form status successfully published"
  end

  private

  def authorize_policy
    authorize Form
  end

  def form_params
    params.require(:form).permit(:title, :description, :project, :status, :date, questions_attributes: [:id, :title, :description, :_destroy])
  end

  def set_form
    @form = Form.find(params[:id])
  end

end

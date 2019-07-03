class ChecklistsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_policy

  def index
    @forms = Form.all.order(created_at: :desc)
    @checklists = Checklist.published
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.find(params[:id])
    @checklist = Checklist.new
    @checklist.answers.build
  end

  def create
    @checklist = Checklist.new(checklist_params)
    if @checklist.save
      redirect_to checklists_path, success: t('checklist_create')
    else
      redirect_to new_checklist_path(id: @checklist.form_id), danger:
      @checklist.errors.full_messages.join('. ')
    end
  end

  def destroy
    @checklist = Checklist.find(params[:id])
    @checklist.destroy
    redirect_to personal_checklists_path, danger: t('checklist_delete')
  end

  private

  def authorize_policy
    authorize Checklist
  end

  def checklist_params
    params.require(:checklist).permit(:title, :description, :project_uid, :form_id, :user_id, :date, answers_attributes: %i[id significance comment question_id])
  end
end

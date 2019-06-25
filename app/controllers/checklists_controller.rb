class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def index
    @forms  = Form.all
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
      redirect_to checklists_path, success: "Checklist successfully fillinged"
    else
      redirect_to checklist_path(@checklist.form_id), danger: @checklist.errors.full_messages.join('. ')
    end
  end

  def edit
    @checklist = Checklist.find(params[:id])
    @forms  = Form.all
    @form = @forms.find(Checklist.find(params[:id]).form_id)
    @checklist.answers.build
  end

  def update
    @checklist = Checklist.find(params[:id])
    if @checklist.update(checklist_params)
      redirect_to checklists_my_checklist_path, success: "Checklist successfully update!!!!!!"
    else
      render 'edit', danger: "Checklist not updated"
    end
  end

  def destroy
    @checklist = Checklist.find(params[:id])
    @checklist.destroy
    redirect_to checklists_my_checklist_path, danger: "Checklist successfully delete"
  end

  def my_checklist
    current_user.checklists
  end


  private

  def checklist_params
    params.require(:checklist).permit(:title, :description, :project_uid, :form_id, :user_id, :date, answers_attributes: [:id, :significance, :comment, :question_id])
  end

end

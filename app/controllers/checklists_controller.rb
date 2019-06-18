class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def index
    @forms  = Form.all
    @checklists = Checklist.published
  end

  def show
    @form = Form.find(params[:id])
    @checklist = Checklist.new
    @checklist.answers.build
  end

  def edit
  end

  def create
    @checklist = Checklist.new(checklist_params)
    if @checklist.save
    redirect_to checklists_path, success: "Checklist successfully fillinged"
    else
      render 'new', danger: "Checklist not updated"
    end
  end

  def update
    if @checklist.update(checklist_params)
      redirect_to @checklist, success: "Checklist successfully update"
    else
      render 'edit', danger: "Checklist not updated"
    end
  end

  def destroy
    @form.destroy
    redirect_to checklists_path, danger: "Checklist successfully delete"
  end

  private

  def checklist_params
    params.require(:checklist).permit(:title, :description, :project_uid, :form_id, :date, answers_attributes: [:id, :value, :question_id])
  end

end

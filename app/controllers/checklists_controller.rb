class ChecklistsController < ApplicationController
  before_action :set_checklist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @checklist = Checklist.new
    @checklist.questions.build
  end

  def index
    @checklists  = Checklist.all
  end

  def show
  end

  def edit
  end

  def create
    @checklist = Checklist.new(checklist_params)
    if @checklist.save
    redirect_to checklists_path, success: "Checklist successfully create"
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
    @checklist.destroy
    redirect_to checklists_path, danger: "Checklist successfully delete"
  end

  private

  def checklist_params
    params.require(:checklist).permit(:title, :description, :project, :status, :date, questions_attributes: [:title, :description, :comment, :answer])
  end

  def set_checklist
    @checklist = Checklist.find(params[:id])
  end

end

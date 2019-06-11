class Admin::ChecklistsController < Admin::ApplicationController
  before_action :set_checklist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorize_policy

  def new
    @checklist = Checklist.new
    @checklist.questions.build
  end

  def index
    @checklists  = Checklist.all
  end

  def show
  end

  def create
    @checklist = Checklist.new(checklist_params)
    if @checklist.save
    redirect_to admin_checklists_path, success: "Checklist successfully create"
    else
      render 'new', danger: "Checklist not updated"
    end
  end

  def edit
  end

  def update
    if @checklist.update(checklist_params)
          binding.pry
      redirect_to admin_checklist_path(@checklist.id), success: "Checklist successfully update"
    else
      render 'edit', danger: "Checklist not updated"
    end
  end

  def destroy
    @checklist.destroy
    redirect_to admin_checklists_path, danger: "Checklist successfully delete"
  end

  private

  def authorize_policy
    authorize Checklist
  end

  def checklist_params
    params.require(:checklist).permit(:title, :description, :project, :status, :date, questions_attributes: [:id, :title, :description, :_destroy])
  end

  def set_checklist
    @checklist = Checklist.find(params[:id])
  end

end

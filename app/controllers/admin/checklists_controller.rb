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
    @checklist.parent = true
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
      redirect_to admin_checklist_path(@checklist.id), success: "Checklist successfully update"
    else
      render 'edit', danger: "Checklist not updated"
    end
  end

  def destroy
    @checklist.destroy
    redirect_to admin_checklists_path, danger: "Checklist successfully delete"
  end

  def set_published
    @checklist = Checklist.find(params[:id])
    @checklist.update_attributes(status: 'published')
    redirect_to admin_checklists_path, success: "Checklist status successfully published"
  end

  private

  def authorize_policy
    authorize Checklist
  end

  def checklist_params
    params.require(:checklist).permit(:title, :description, :project, :status, :date, :parent, questions_attributes: [:id, :title, :description, :_destroy])
  end

  def set_checklist
    @checklist = Checklist.find(params[:id])
  end

end

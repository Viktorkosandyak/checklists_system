class PersonalChecklistsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_policy

  def index
    current_user.checklists
  end

  def edit
    @checklist = Checklist.find(params[:id])
    @form = @checklist.form
    @checklist.answers
  end

  def update
    @checklist = Checklist.find(params[:id])
    if @checklist.update(checklist_params)
      redirect_to personal_checklists_path, success:
      'Checklist successfully update!!!!!!'
    else
      redirect_to  edit_personal_checklist_path(@checklist.id), danger:
      @checklist.errors.full_messages.join('. ')
    end
  end

  private

  def authorize_policy
    authorize Checklist
  end

  def checklist_params
    params.require(:checklist).permit(answers_attributes:
    %i[id significance comment question_id])
  end
end

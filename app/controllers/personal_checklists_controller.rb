class PersonalChecklistsController < ApplicationController
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
      redirect_to personal_checklists_path, danger:
      @checklist.errors.full_messages.join('. ')
    end
  end

  private

  def checklist_params
    params.require(:checklist).permit(answers_attributes:
    %i[id significance comment question_id])
  end
end

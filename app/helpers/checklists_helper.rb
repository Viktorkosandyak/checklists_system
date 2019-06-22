module ChecklistsHelper
  def forming_select
    Form.all.pluck(:title, :id)
  end
end

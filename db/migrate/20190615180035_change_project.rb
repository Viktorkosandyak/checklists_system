class ChangeProject < ActiveRecord::Migration[5.2]
  def change
    rename_column :checklists, :project, :project_uid
  end
end

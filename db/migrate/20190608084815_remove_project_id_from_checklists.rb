class RemoveProjectIdFromChecklists < ActiveRecord::Migration[5.2]
  def change
    remove_column :checklists, :project_id, :integer
  end
end
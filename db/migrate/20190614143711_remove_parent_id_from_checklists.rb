class RemoveParentIdFromChecklists < ActiveRecord::Migration[5.2]
  def change
    remove_column :checklists, :parent_id, :integer
  end
end

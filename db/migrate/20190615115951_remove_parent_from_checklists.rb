class RemoveParentFromChecklists < ActiveRecord::Migration[5.2]
  def change
    remove_column :checklists, :parent, :boolean
  end
end
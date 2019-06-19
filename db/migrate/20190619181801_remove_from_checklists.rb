class RemoveFromChecklists < ActiveRecord::Migration[5.2]
  def change
    remove_column :checklists, :status, :integer
  end
end

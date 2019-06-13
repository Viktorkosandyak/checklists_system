class RemoveStatusFromChecklists < ActiveRecord::Migration[5.2]
  def change
    remove_column :checklists, :status, :string
  end
end

class AddStatusToChecklists < ActiveRecord::Migration[5.2]
  def change
    add_column :checklists, :status, :integer
  end
end

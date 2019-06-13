class AddParentIdToChecklists < ActiveRecord::Migration[5.2]
  def change
    add_column :checklists, :parent_id, :integer, index: :true
  end
end

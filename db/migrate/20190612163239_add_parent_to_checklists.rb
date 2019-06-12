class AddParentToChecklists < ActiveRecord::Migration[5.2]
  def change
    add_column :checklists, :parent, :boolean, default: false
  end
end

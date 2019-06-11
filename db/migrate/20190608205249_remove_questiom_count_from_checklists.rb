class RemoveQuestiomCountFromChecklists < ActiveRecord::Migration[5.2]
  def change
    remove_column :checklists, :questiom_count, :integer
  end
end

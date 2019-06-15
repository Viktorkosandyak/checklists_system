class RemoveParentIdFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :parent_id, :integer
  end
end

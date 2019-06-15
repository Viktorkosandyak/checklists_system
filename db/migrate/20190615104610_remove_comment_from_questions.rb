class RemoveCommentFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :comment, :text
    remove_column :questions, :answer, :integer
  end
end

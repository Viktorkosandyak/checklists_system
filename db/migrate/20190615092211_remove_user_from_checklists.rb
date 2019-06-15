class RemoveUserFromChecklists < ActiveRecord::Migration[5.2]
  def change
    remove_reference :checklists, :user, index: true
  end
end

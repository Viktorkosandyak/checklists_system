class AddUserToForms < ActiveRecord::Migration[5.2]
  def change
    add_reference :forms, :user, foreign_key: true
  end
end

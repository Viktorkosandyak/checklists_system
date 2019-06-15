class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.datetime :date

      t.timestamps
    end
  end
end

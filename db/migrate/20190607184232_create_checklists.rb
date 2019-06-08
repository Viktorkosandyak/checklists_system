class CreateChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.string :title
      t.text :description
      t.integer :project_id
      t.integer :questiom_count
      t.string :status
      t.datetime :date
      t.references :user, index: true 

      t.timestamps
    end
  end
end

class CreateChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.string :title
      t.text :description
      t.string :project_uid
      t.datetime :date
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :comment
      t.integer :significance
      t.references :question, foreign_key: true
      t.references :checklist, foreign_key: true

      t.timestamps
    end
  end
end

class ChangeValue < ActiveRecord::Migration[5.2]
  def change
     rename_column :answers, :value, :significance
  end
end

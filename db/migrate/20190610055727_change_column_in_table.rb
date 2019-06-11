class ChangeColumnInTable < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :questions, :answer, :integer
    end

    def down
      change_column :questions, :answer, :string
    end
  end
end

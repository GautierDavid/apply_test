class ChangeColumnTypeToStreet < ActiveRecord::Migration[7.0]
  def change
    change_column :streets, :to, :integer
    change_column :streets, :from, :integer
  end
end

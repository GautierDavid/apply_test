class AddColumnsToStreet < ActiveRecord::Migration[7.0]
  def change
    add_column :streets, :title, :string
    add_column :streets, :from, :string
    add_column :streets, :to, :string
  end
end

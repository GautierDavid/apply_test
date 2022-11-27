class AddColumnsToCommune < ActiveRecord::Migration[7.0]
  def change
    add_column :communes, :name, :string
    add_column :communes, :code_insee, :integer
    add_reference :communes, :intercommunality, index: true
  end
end

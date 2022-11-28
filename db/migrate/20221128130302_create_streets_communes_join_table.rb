class CreateStreetsCommunesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :streets, :communes do |t|
      t.index :street_id
      t.index :commune_id
    end
  end
end

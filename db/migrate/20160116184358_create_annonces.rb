class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :marque
      t.string :modele
      t.string :couleur
      t.integer :model_year
      t.float :price
      t.text :description
      t.string :carburant
      t.string :boite_vitesse

      t.timestamps null: false
    end
  end
end

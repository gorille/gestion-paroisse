class CreateDonnateurs < ActiveRecord::Migration
  def change
    create_table :donnateurs do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse_1
      t.string :adresse_2
      t.integer :code_postal
      t.string :ville
      t.string :telephone

      t.timestamps
    end
  end
end

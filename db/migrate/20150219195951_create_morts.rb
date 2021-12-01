class CreateMorts < ActiveRecord::Migration[4.2]
  def change
    create_table :morts do |t|
      t.string :nom
      t.string :prenom
      t.date :date_de_deces

      t.timestamps
    end
  end
end

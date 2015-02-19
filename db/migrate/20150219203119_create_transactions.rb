class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :montant
      t.date :date_effet
      t.string :numero_de_piece
      t.text :commentaire
      t.references :mort, index: true
      t.references :donnateur, index: true
      t.references :paroisse, index: true

      t.timestamps
    end
  end
end

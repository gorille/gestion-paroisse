class AddPrenom2ToMorts < ActiveRecord::Migration[4.2]
  def change
    add_column :morts, :prenom2, :string
  end
end

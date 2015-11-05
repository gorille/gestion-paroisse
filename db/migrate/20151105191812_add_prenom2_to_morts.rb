class AddPrenom2ToMorts < ActiveRecord::Migration
  def change
    add_column :morts, :prenom2, :string
  end
end

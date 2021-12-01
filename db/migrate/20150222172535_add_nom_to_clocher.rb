class AddNomToClocher < ActiveRecord::Migration[4.2]
  def change
    add_column :clochers, :nom, :string
  end
end

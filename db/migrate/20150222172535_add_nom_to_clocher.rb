class AddNomToClocher < ActiveRecord::Migration
  def change
    add_column :clochers, :nom, :string
  end
end

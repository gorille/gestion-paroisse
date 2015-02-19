class CreateParoisses < ActiveRecord::Migration
  def change
    create_table :paroisses do |t|
      t.string :nom

      t.timestamps
    end
  end
end

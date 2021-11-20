class CreateClochers < ActiveRecord::Migration[4.2]
  def change
    create_table :clochers do |t|

      t.timestamps
    end
  end
end

class CreateClochers < ActiveRecord::Migration
  def change
    create_table :clochers do |t|

      t.timestamps
    end
  end
end

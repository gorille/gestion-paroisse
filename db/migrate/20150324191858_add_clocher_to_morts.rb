class AddClocherToMorts < ActiveRecord::Migration[4.2]
  def change
    add_reference :morts, :clocher, index: true
  end
end

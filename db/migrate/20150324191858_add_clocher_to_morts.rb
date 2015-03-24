class AddClocherToMorts < ActiveRecord::Migration
  def change
    add_reference :morts, :clocher, index: true
  end
end

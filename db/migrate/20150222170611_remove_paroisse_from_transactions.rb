class RemoveParoisseFromTransactions < ActiveRecord::Migration
  def change
    rename_column :transactions, :paroisse_id, :clocher_id
  end
end

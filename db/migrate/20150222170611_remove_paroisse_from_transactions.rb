class RemoveParoisseFromTransactions < ActiveRecord::Migration[4.2]
  def change
    rename_column :transactions, :paroisse_id, :clocher_id
  end
end

class AddPlanificationLibreToMorts < ActiveRecord::Migration[4.2]
  def change
    add_column :morts, :planification_libre, :boolean
  end
end

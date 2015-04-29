class AddPlanificationLibreToMorts < ActiveRecord::Migration
  def change
    add_column :morts, :planification_libre, :boolean
  end
end

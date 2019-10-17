class RemoveArrivalNumberFromArrivals < ActiveRecord::Migration[5.2]
  def change
    remove_column :arrivals, :arrival_number, :integer
  end
end

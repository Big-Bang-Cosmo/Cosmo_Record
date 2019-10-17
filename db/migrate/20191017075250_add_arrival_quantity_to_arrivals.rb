class AddArrivalQuantityToArrivals < ActiveRecord::Migration[5.2]
  def change
    add_column :arrivals, :arrival_quantity, :integer
  end
end

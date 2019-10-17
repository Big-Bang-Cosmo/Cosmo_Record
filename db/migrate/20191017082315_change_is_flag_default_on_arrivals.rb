class ChangeIsFlagDefaultOnArrivals < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :arrivals, :arrival_quantity, :default => 0
  end
end

class RemoveTotalPriceFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :total_price, :integer
  end
end

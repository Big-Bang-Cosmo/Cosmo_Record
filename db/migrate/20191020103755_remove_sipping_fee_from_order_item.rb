class RemoveSippingFeeFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :shipping_fee, :string
  end
end

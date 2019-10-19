class AddShippingFeeToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :shipping_fee, :inteder
  end
end

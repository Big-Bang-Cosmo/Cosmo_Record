class RemoveShippingFeeFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :shipping_fee, :inteder
  end
end

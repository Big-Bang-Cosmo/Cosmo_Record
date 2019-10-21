class AddSippingFeeToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :shipping_fee, :string
  end
end

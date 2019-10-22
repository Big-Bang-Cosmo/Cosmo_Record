class AddDeliveryPostalCodeToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :delivery_postal_code, :integer
  end
end

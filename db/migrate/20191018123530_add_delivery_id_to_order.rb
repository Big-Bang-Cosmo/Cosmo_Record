class AddDeliveryIdToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :delivery_id, :inteder
  end
end

class AddDeliveryAdressToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :delivery_adress, :string
  end
end

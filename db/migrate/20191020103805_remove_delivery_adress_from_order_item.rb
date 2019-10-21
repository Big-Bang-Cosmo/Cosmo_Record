class RemoveDeliveryAdressFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :delivery_adress, :string
  end
end

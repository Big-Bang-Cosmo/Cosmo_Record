class AddDeliveryPhoneNumberToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :delivery_phone_number, :string
  end
end

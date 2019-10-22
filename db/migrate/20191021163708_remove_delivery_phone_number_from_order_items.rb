class RemoveDeliveryPhoneNumberFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :delivery_phone_number, :string
  end
end

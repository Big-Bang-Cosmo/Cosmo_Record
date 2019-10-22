class RemoveDeliveryPhoneNumberFromDeliveries < ActiveRecord::Migration[5.2]
  def change
    remove_column :deliveries, :delivery_phone_number, :integer
  end
end

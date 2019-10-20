class AddDeliveryAdressToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :delivery_adress, :string
  end
end

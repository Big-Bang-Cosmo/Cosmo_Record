class RemoveDeliveryAdressFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :delivery_adress, :integer
  end
end

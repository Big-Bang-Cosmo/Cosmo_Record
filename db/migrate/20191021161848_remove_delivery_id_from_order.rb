class RemoveDeliveryIdFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :delivery_id, :integer
  end
end

class RemoveQuantityFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :quantity, :string
  end
end

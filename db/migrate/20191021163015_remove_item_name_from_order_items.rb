class RemoveItemNameFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :item_name, :string
  end
end

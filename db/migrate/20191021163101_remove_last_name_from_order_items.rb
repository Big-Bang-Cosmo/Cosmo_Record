class RemoveLastNameFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :last_name, :string
  end
end

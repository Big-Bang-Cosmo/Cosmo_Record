class RemoveUserIdFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :user_id, :integer
  end
end

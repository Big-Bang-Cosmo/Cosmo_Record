class AddEmailToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :email, :string
  end
end

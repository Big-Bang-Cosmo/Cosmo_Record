class AddFirstNameToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :first_name, :string
  end
end

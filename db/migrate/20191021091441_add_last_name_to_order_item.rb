class AddLastNameToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :last_name, :string
  end
end

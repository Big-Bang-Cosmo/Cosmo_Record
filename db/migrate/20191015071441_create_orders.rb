class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_item_id
      t.integer :shipping_fee
      t.integer :total_price

      t.timestamps
    end
  end
end

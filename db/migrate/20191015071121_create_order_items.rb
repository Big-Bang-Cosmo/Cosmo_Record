class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :user_id
      t.integer :order_id
      t.string :item_name
      t.string :item_image
      t.integer :price
      t.string :quantity

      t.timestamps
    end
  end
end

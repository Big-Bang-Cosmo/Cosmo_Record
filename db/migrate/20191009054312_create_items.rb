class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :artist_id
      t.integer :label_id
      t.integer :genre_id
      t.string :item_name
      t.string :item_image
      t.integer :price
      t.text :introduction
      t.integer :stock
      t.string :is_item_deletable

      t.timestamps
    end
  end
end

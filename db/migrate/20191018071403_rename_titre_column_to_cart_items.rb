class RenameTitreColumnToCartItems < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cart_items, :use_id, :user_id
  end
end

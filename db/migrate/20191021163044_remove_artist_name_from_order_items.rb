class RemoveArtistNameFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :artist_name, :string
  end
end

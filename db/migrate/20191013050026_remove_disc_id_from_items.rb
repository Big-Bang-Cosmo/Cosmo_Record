class RemoveDiscIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :disc_id, :integer
  end
end

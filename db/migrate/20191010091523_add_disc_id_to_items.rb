class AddDiscIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :disc_id, :integer
  end
end

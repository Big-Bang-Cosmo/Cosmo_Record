class RemoveLastNameRubyFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :last_name_ruby, :string
  end
end

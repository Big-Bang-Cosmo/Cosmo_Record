class RemoveFirstNameRubyFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :first_name_ruby, :string
  end
end

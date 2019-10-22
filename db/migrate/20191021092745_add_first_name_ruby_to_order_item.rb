class AddFirstNameRubyToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :first_name_ruby, :string
  end
end

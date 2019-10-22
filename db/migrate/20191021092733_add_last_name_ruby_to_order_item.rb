class AddLastNameRubyToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :last_name_ruby, :string
  end
end

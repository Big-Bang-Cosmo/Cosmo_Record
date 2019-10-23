class ChangeColumnToOder < ActiveRecord::Migration[5.2]
  def up
  	change_column :orders, :delivery_status, :string, default: "商品準備中"
  end

  def down
  	change_column :orders, :delivery_status, :string
  end

end







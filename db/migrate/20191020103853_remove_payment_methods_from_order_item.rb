class RemovePaymentMethodsFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :payment_methods, :string
  end
end

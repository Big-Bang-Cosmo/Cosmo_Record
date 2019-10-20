class AddPaymentMethodsToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :payment_methods, :string
  end
end

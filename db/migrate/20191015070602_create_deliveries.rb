class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.integer :user_id
      t.string :delivery_postal_code
      t.string :delivery_address
      t.string :delivery_phone_number

      t.timestamps
    end
  end
end

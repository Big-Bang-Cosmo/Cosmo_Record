class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :last_name_ruby
      t.string :first_name_ruby
      t.string :phone_number
      t.string :email
      t.string :contact_body

      t.timestamps
    end
  end
end

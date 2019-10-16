class AddLastNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name_ruby, :string
    add_column :users, :first_name_ruby, :string
    add_column :users, :gender, :string
    add_column :users, :is_user_deletable, :string
  end
end

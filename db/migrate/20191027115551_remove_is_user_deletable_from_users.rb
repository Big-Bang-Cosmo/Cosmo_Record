class RemoveIsUserDeletableFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :is_user_deletable, :string
  end
end

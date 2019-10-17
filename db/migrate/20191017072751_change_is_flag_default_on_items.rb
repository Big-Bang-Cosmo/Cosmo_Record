class ChangeIsFlagDefaultOnItems < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :user, :is_flag, from: false, to: 0
  end
end

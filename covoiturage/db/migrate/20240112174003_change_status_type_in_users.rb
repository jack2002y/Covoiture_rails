class ChangeStatusTypeInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :status, :boolean
  end
end

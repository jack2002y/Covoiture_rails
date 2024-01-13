class AddTypePermisToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :type_permis, :string
  end
end

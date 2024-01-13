class RemoveTypePermisFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :type_permis, :string
  end
end

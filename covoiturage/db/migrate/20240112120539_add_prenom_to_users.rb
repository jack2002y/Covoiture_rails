class AddPrenomToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :prenom, :string
  end
end

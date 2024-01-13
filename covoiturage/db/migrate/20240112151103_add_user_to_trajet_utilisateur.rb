class AddUserToTrajetUtilisateur < ActiveRecord::Migration[7.1]
  def change
    add_reference :trajet_utilisateurs, :users, null: false, foreign_key: true
  end
end

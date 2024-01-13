class CreateConducteur < ActiveRecord::Migration[7.1]
  def change
    create_table :conducteurs do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :password_digest 
      t.string :type_permis
      t.integer :age
      t.string :status

      t.timestamps
    end
  end
end

class CreateVehicule < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicules do |t|
      t.string :nom_vehicule
      t.integer :nombre_place
      t.string :type_vehicule
      t.float :pris_place 

      t.timestamps
    end
  end
end

class AddConducteurToVehicule < ActiveRecord::Migration[7.1]
  def change
    add_reference :vehicules, :conducteurs, null: false, foreign_key: true
  end
end

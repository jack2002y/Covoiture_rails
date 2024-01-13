class AddConducteurToTrajetConducteur < ActiveRecord::Migration[7.1]
  def change
    add_reference :trajet_conducteurs, :conducteurs, null: false, foreign_key: true
  end
end

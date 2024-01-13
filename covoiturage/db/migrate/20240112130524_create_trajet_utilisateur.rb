class CreateTrajetUtilisateur < ActiveRecord::Migration[7.1]
  def change
    create_table :trajet_utilisateurs do |t|
      t.timestamp :heure_dep
      t.timestamp :heure_arrivee
      t.string :lieu_depart
      t.string :lieu_arrivee

      t.timestamps
    end
  end
end

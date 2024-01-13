class Vehicule < ApplicationRecord
    belongs_to :conducteur, foreign_key: true

    validates :nom_vehicule, presence: true
    validates :nombre_place, presence: true
    validates :type_vehicule, presence: true
    validates :pris_place, presence: true



end

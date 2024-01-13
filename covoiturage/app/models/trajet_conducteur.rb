class TrajetConducteur < ApplicationRecord
    belongs_to :conducteur
    has_many :courses
    has_many :trajet_utilisateurs, through: :courses
end
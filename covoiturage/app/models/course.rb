class Course < ApplicationRecord
  belongs_to :trajet_conducteur
  belongs_to :trajet_utilisateur
end

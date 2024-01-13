class TrajetPassager < ApplicationRecord
    belongs_to :user
    has_many :courses
    has_many :trajet_conducteurs, through :courses
end

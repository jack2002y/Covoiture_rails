class Conducteur < ApplicationRecord
    has_secure_password

    has_one :vehicule

    has_many :trajet_conducteurs

    validates :nom, presence: true
    validates :prenom, presence: true
    validates :age, presence: true
    validates :type_permis, presence: true

    attr_accessor :status

    validates :email, presence: true
    normalizes :email, with: ->(email) {email.strip.downcase}

    generates_token_for :password_reset, expires_in: 15.minutes do
        password_salt&.last(10)
    end

    generates_token_for :email_confirmation, expires_in: 24.hours do
        email
    end

    # def self.authenticate(email, password)
    #     conducteur = find_by(email: email)
    #     conducteur if conducteur&.authenticate(password)
    # end


    # def self.authenticate(email, password)

    #     conducteur = Conducteur.find_by(email: email)

    #     if conducteur && conducteur.authenticate(password)
    #       return conducteur
    #     else
    #        return nil
    #     end
    # end

end

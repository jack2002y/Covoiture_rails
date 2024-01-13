class PasswordMailer < ApplicationMailer
    def password_reset
        mail to: params[:user].email
    end

    def password_reset_conducteur
        mail to: params[:conducteur].email
    end
end

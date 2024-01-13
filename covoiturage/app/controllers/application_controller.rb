class ApplicationController < ActionController::Base

    private

    def authenticate_user!
        redirect_to root_path, alert: "You must be logged in to do that." unless user_signed_in?
    end

    def authenticate_conducteur!
        redirect_to root_path, alert: "You must be logged in to do that." unless conducteur_signed_in?
    end


    def current_user
        Current.user ||=authenticate_user_form_session
    end
    helper_method :current_user

    def current_conducteur
        Current.conducteur ||=authenticate_conducteur_form_session
    end
    helper_method :current_conducteur


    def authenticate_user_form_session
        User.find_by(id: session[:user_id])
    end

    def authenticate_conducteur_form_session
        Conducteur.find_by(id: session[:conducteur_id])
    end

    def user_signed_in?
        current_user.present?
    end
    helper_method :user_signed_in?

    def conducteur_signed_in?
        current_conducteur.present?
    end
    helper_method :conducteur_signed_in?

    def login(user)
        Current.user = user
        reset_session
        session[:user_id] = user.id
    end

    def logout(user)
        Current.user = nil
        reset_session
    end


    def login_conducteur(conducteur)
        Current.conducteur = conducteur
        reset_session
        session[:conducteur_id] = conducteur.id
    end

    def logout_conducteur(conducteur)
        Current.conducteur = nil
        reset_session
    end


end

class SessionConducteursController < ApplicationController

    def new
    end

    def create
        if conducteur = Conducteur.authenticate_by(email: params[:email],password: params[:password])
            login_conducteur conducteur
            # redirect_to new_conducteur_vehicule_path(:current_conducteur), notice: "You Have signed successfully."
            redirect_to new_conducteur_vehicule_path(:current_conducteur), notice: "You Have signed successfully."

        else
                flash[:alert] = "Invalid email or password."
                render :new, status: :unprocessable_entity
        end
    end

end

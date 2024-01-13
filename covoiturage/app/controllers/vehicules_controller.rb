class VehiculesController < ApplicationController
    before_action :authenticate_conducteur!

    def new
        @conducteur = current_conducteur
        puts @conducteur.inspect
        @vehicule = @conducteur.build_vehicule
    end

    def create
        @conducteur = current_conducteur
        # @conducteur.build_vehicule(vehicule_params)
        # if @conducteur.vehicule.save
        if @conducteur.create_vehicule(vehicule_params)
            redirect_to edit_accueil_path, notice: "Voiture crée avec succès."
        else
            flash[:alert] = "Some data must be wrong."
            render :new , status: :unprocessable_entity
        end
    end

    private

    def vehicule_params
        params.require(:vehicule).permit(
            :nom_vehicule,
            :nombre_place,
            :type_vehicule,
            :pris_place
            )
    end
end

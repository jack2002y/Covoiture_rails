class ConducteursController < ApplicationController
    # Creer pour supporter les actions de conducteur 
    # comme register supporte les actions de user  

    def new
        @conducteur = Conducteur.new
    end

    def create
        @conducteur = Conducteur.new(conducteur_params)
        if @conducteur.save
          login @conducteur
          redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    
    def conducteur_params
        params.require(:conducteur).permit(
        :nom, 
        :prenom, 
        :age, 
        :email, 
        :type_permis, 
        :password, 
        :password_confirmation)
    end

end
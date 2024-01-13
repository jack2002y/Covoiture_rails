class AccueilsController < ApplicationController
    if before_action :authenticate_user!
    else before_action :authenticate_conducteur!
        before_action :authenticate_user!
        before_action :authenticate_conducteur!
    end


    def index
    end

    def new

    end

    def create
    end
end

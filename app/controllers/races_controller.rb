class RacesController < ApplicationController
    def show 
        @race = Race.find(params[:id])
    end

    def index 
        @races = Race.all
    end
end

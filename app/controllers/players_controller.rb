class PlayersController < ApplicationController
    def new

    end

    def create 

    end

    def show 
        @player = Player.find(params[:id])
    end

    def index 

    end

    def edit 

    end

    def update 

    end

    def destroy
        
    end

    private

    def player_params

    end
end

class CharactersController < ApplicationController
    def new

    end

    def create 

    end 

    def show 
        @character = Character.find(params[:id])
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

    def char_params
        
    end
end

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

    def spell_select #new
        @char = Character.all.find(params[:char_id])
        @charspells = Characterspell.new
        @spells = @char.characterclasses.first.spells
    end

    private

    def char_params
        
    end
end

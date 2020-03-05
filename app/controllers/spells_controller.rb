class SpellsController < ApplicationController
    def show 
        @spell = Spell.find(params[:id])
    end

    def index 
        @spells = Spell.all
    end
end

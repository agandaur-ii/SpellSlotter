class CharacterclassesController < ApplicationController
    def show 
        @charclass = Characterclass.find(params[:id])
    end

    def index 
        @classes = Characterclass.all
    end
end

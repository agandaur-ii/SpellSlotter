class BackgroundsController < ApplicationController
    def show 
        @background = Background.find(params[:id])
    end

    def index 
        @backgrounds = Background.all
    end
end

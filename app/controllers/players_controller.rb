class PlayersController < ApplicationController
    def new
        @player = Player.new
    end

    def create 
        @player = Player.create(player_params)
        if @player.valid? 
            redirect_to @player
        else
            flash.now[:notice] = @player.errors.full_messages
            render :new
        end

    end

    def show 
        @player = Player.find(params[:id])
    end

    def index 
        @players = Player.all
    end

    def edit 
        @player = Player.find(params[:id])
    end

    def update 
        @player = Player.find(params[:id])
        if @player.update(player_params)
            redirect_to @player
        else
            flash.now[:notice] = @player.errors.full_messages
            render :edit
        end
    end

    def destroy
        @player = Player.find(params[:id])
        @player.destroy
        redirect_to new_player_path
    end

    private

    def player_params
        params.require(:player).permit(:name)
    end
end

class CharactersController < ApplicationController
    def new
        @character = Character.new
        @player = Player.find(params[:player_id])
    end

    def create 
        @character = Character.create(char_params)
        if @character.valid?
            @player = Player.find(params[:character][:player_id])
            redirect_to @player
        else
            flash.now[:notice] = @character.errors.full_messages
            render :new
        end
    end 

    def show 
        @character = Character.find(params[:id])
        @player = @character.player
    end

    def index 
        @characters = Character.all
    end

    def edit 
        @character = Character.find(params[:id])
        @player = @character.player
    end

    def update 
        @character = Character.find(params[:id])
        if @character.update(char_params)
            redirect_to @character
        else
            flash.now[:notice] = @character.errors.full_messages
            render :edit
        end
    end

    def destroy
        @character = Character.find(params[:id])
        @player = Player.find(params[:player_id])
        @character.destroy
        redirect_to @player
    end

    def spell_select #new
        @char = Character.all.find(params[:char_id])
        @charspells = Characterspell.new
        @spells = @char.characterclasses.first.spells
    end

    private

    def char_params
        params.require(:character).permit(
            :name, 
            :description, 
            :characterclass_ids, 
            :party_id, 
            :alignment_id, 
            :background_id, 
            :race_id,
            :player_id
        )
    end
end

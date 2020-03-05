class PartiesController < ApplicationController
    def new  
        @party = Party.new
    end

    def create
        @party = Party.create(party_params)
        if @party.valid? 
            redirect_to @party
        else
            flash.now[:notice] = @party.errors.full_messages
            render :new
        end
    end

    def show 
        @party = Party.find(params[:id])
        @dm = Player.find(@party.dm_id)
    end

    def index 
        @parties = Party.all
    end

    def edit 
        @party = Party.find(params[:id])
    end

    def update 
        @party = Party.find(params[:id])
        if @party.update(party_params)
            redirect_to @party
        else
            flash.now[:notice] = @party.errors.full_messages
            render :edit
        end
    end

    def destroy
        @party = Party.find(params[:id])
        @party.characters.all.map{|c| c.party_id == nil}
        @party.destroy
        redirect_to new_party_path
    end

    def member_edit
        byebug
    end

    private

    def party_params
        params.require(:party).permit(:name, :dm_id)
    end
end

class CharacterspellsController < ApplicationController

    def create
        char = params[:characterspell][:char_id]
        @c = Character.find(char)
        params[:characterspell][:spell_id].shift
        spells = params[:characterspell][:spell_id]
        Characterspell.where(character_id: char).destroy_all
        spells.each do |s_id|
            Characterspell.create(character_id: char, spell_id: s_id)
        end
        redirect_to @c
    end
end
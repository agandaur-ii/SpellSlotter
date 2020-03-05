class CharacterspellsController < ApplicationController
    # def new
    #     char = Character.all.find(params[:char_id])
    #     @charspells = Characterspell.new
    #     @spells = char.characterclasses.first.spells
    # end

    # def does_char_have_spells?(id)
    #     test = []
    #     Characterspell.all.each do |cs|
    #         test << cs.character_id
    #     end
    #     test.include?(id.to_i)
    # end

    # def does_char_already_have_spell?(c_id, s_id)
    #     test = []
    #     Characterspell.all.each do |cs|
    #         test << (cs.character_id == c_id && cs.spell_id == s_id)
    #     end
    #     test.include?(true)
    # end

    def create
        char = params[:characterspell][:char_id]
        @c = Character.find(char)
        params[:characterspell][:spell_id].shift
        spells = params[:characterspell][:spell_id]
        Characterspell.where(character_id: char).destroy_all
        spells.each do |s_id|
            Characterspell.create(character_id: char, spell_id: s_id)
        end
        redirect_to character_path(@c)
    end
    
    # def edit 
    #     char = Character.all.find(params[:char_id])
    #     test = []
    #     Characterspell.all.each do |cs|
    #         test << cs.character_id == char.id
    #     end

    #     if test.include?(false)
    #         @charspells = Characterspell.new
    #     else 
    #         @charspells = Characterspell.update
    #     end

    #     @charspells = Characterspell.new
    #     @spells = char.characterclasses.first.spells
    # end

    # def update

    # end
end
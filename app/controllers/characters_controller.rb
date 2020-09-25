class RecordsController < ApplicationController
    def index
        characters = Character.all 
        render json: characters, except: [created_at, :updated_at ]
    end

    def create
        character = Character.create(character_params)
        render json: character
    end

    private

    def character_params
        params.require(:character).permit(:pokemon, :attack, :defense, :speed, :luck)
    end
end

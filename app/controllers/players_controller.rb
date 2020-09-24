class PlayersController < ApplicationController
    def index
        players = Player.all 
        render json: players, include: [:records]
    end
    def show
        player = Player.find(params[:id])
        render json: player, include: [:records]
    end
    def create
        player = Player.new(name: params[:name].capitalize, bio: params[:bio], favorite: params[:favorite])
        if player.save
            render json: player
        else 
            render json: {error: "Error creating player"}
        end
    end
    def update
        player = Player.find(params[:id])
        new_records = player.records.push(params[:record])
        player.update(records: new_records)
        render json: player
    end
    def destroy
        players = Player.all
        player = Player.find(params[:id])
        player.destroy
        render json: players
    end
end

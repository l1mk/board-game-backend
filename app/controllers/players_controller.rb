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
        players = Player.all
        if players.exists?(name: params[:name].capitalize)
        player = players.find_by(name: params[:name])
        render json: player
        else 
        player = Player.create(name: params[:name].capitalize, bio: params[:bio], favorite: params[:favorite])
        render json: player
        end
    end
    def update
        player = Player.find(params[:id])
        new_records = player.records.push(params[:record])
        player.update(records: new_records)
        render json: player
    end
    def destroy
        player = Player.find(params[:id])
        player.destroy
        render json: player
    end
end

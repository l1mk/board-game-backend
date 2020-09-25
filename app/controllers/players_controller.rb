class PlayersController < ApplicationController
    def index
        players = Player.all 
        render json: players
    end
    def show
        player = Player.find(params[:id])
        render json: player
    end
    def create
        players = Player.all
            if players.exists?(name: params[:name].capitalize)
            player = players.find_by(name: params[:name].capitalize)
            render json: player
            else 
            player = Player.new(name: params[:name].capitalize)
                if player.save
                render json: player
                else 
                render json: {error: "Error creating player"}
                end
            end
    end
    def update
        player = Player.find(params[:id])
        player.update(wins: params[:wins], loses: params[;loses])
        player.save
        render json: player
    end
    def destroy
        players = Player.all
        player = Player.find(params[:id])
        player.destroy
        render json: players
    end
end

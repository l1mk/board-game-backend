class GamesController < ApplicationController
    def index
        games = Game.all 
        render json: games
    end

    def create
        game = Game.create(game_params)
        render json: game
    end

    def destroy
        games = Game.all
        game = Player.find(params[:id])
        game.destroy
        render json: games
    end
    
    private

    def game_params
        params.require(:game).permit(:turns, :player1, :player2, :player3, :player4)
    end

end


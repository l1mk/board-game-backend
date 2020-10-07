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
        game = Game.find(params[:id])
        game.destroy
        render json: games
    end
    
    private

    def game_params
        params.require(:game).permit(:turns, :player1, :player2, :player3, :player4, :pokemon1, :pokemon2, :pokemon3, :pokemon4)
    end

end


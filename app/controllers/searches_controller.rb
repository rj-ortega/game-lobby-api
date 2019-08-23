class SearchesController < ApplicationController
    def index
        @games = Game.all
    
        render json: @games
    end

    params.require(:search).permit(:search)
end

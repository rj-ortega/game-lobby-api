class PcController < ApplicationController
    def index
      @games = Pc.all
  
      render json: @games
    end
end  
class Ps4Controller < ApplicationController
    def index
      @games = Ps4.all
  
      render json: @games
    end
end  
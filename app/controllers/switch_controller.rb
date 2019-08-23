class SwitchController < ApplicationController
    def index
      @games = Switch.all
  
      render json: @games
    end
end  
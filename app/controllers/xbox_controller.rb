class XboxController < ApplicationController
    def index
      @games = Xbox.all
  
      render json: @games
    end
end  
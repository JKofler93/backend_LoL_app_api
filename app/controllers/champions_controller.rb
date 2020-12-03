class ChampionsController < ApplicationController
    def index
        champions = Champion.all
        render json: champions, include: [:name, :image, :bio]
    end 
end

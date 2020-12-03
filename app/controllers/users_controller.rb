class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:user_name]
    end 
end

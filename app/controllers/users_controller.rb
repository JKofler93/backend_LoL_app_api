class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:user_name]
    end
    # Step1. new instance of user / step2. Save value / Step3. See if value is saved or not if saved return nrew obj, if failed return an error code. 
    # update: find instance first, update instance, see if update passed or failed, if fail retunr an error code.
    # Delete find by instance want to delete, then delete, if success positive status, if fail send error code 
    def create
        user = User.create(user_params)
        puts user.user_name
        render json: user, include: [:user_name]
    end 

    def user_params
        params.require(:user).permit(:user_name)
    end 
end

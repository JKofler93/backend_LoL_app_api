class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: comments, include: [:comment, :user, :champion]
    end 

    def create
        user = User.create(comment_params)
    end 

    def destroy
        user = User.find(params[:id])
        user.destroy
    end 

    def comment_params
        params.require(:comment).permit(:comment, :user_id, :champion_id)
    end 
end

class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: comments, include: [:comment, :user, :champion]
    end 

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end 

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end  

    def comment_params
        params.require(:comments).permit(:comment, :user_id, :champion_id)
    end 
end

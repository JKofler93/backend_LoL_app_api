class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: comments, include: [:comment, :user, :champion]
    end 
end

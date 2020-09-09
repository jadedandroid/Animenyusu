class CommentsController < ApplicationController

    def index
        @comments = Comments.all
    end

    def new
        @comment = Comment.new
        @posts = Post.all
    end

    def show
        @comment = Comment.find(params[:id])
    end

    def create
        @comment = Comment.create(comment_params) 
        redirect_to post_path
    end
    
    def update
        @comment.update(comment_params)
        redirect_to post_path
    end
    
    def destroy
        @comment.destroy
        redirect_to user_path(@current_user)
    end

    private

    def comment_params
        params.require(:comments).permit(:content)
    end


end

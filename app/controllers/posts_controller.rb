class PostsController < ApplicationController
    def index 
        @post = Post.all
    end
    def new
        @post = Post.new
    end

    def show

    end

    def create
        @post = Post.create(post_params)
        redirect_to posts_path
    end
    def update
        @post.update(post_params)
        redirect_to word_path(@word)
    end

    def destroy
        @post.destroy
        redirect_to user_path
    end

    def post_params
        params.require(:posts).permit(:title, :content)
    end

    def get_post
        @post = Post.find(params[:id])
    end
end

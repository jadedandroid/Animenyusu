class PostsController < ApplicationController
    #skip_before_action :authorized, only: [:new, :create]
    
    def index 
        @post = Post.all
    end

    def new
        @post = Post.new
        @animes = Anime.all
        @tags = Tag.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.create(post_params)
        redirect_to posts_path
    end

    def update
        @post = Post.all.find(params[:id])
        @post.update(params.require(:posts).permit(:title, :content))
        redirect_to post_path(@post)
    end

    def destroy
        @post.destroy
        redirect_to user_path
    end

    def get_post
        @post = Post.find(params[:id])
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :anime_id, :tag_id)
    end

end

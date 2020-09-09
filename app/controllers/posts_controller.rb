class PostsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def index 
        @post = Post.all
    end

    def new
        @post = Post.new
        @anime = Anime.all
        @tag = Tag.all
    end

    def show
        @post = @current_post
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

    def post_params
        params.require(:posts).permit(:title, :content, :anime_id, :tag_id)
    end

    def get_post
        @post = Post.find(params[:id])
    end
end

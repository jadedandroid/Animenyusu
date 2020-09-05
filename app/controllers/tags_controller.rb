class TagsController < ApplicationController
    def index
        @tagged = @current_user.liked_animes 

    end
    def new
        @tag = Tag.new
        @user = User.all
        @anime = Anime.all - @current_user.animes

    end

    def create
        @tag = Tag.tagged.create(tag_params)
        redirect_to user_path(@current_user)
    end

    private
    def tag_params
        params.require(:tag).permit(:user_id, :anime_id :genre)
    end
    


end

class LikedAnimesController < ApplicationController
    def index
        @liked = @current_user.Liked_anime
    end

    def new
        @like = Liked_anime.new
        @user = User.all 
        @anime = Anime.all 
    end

    def create
        @like = Liked_anime.new(liked_params)
        redirect_to user_path(@current_user)
    end

    def show

    end
    

    def destroy
        @like.destroy
        redirect_to user_path(@current_user)
    end 
    private
    def liked_params
        params.require(:Liked_animes).permit(:anime_id)
    end
end

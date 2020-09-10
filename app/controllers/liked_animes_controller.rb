class LikedAnimesController < ApplicationController
    
    def index
        @likes = Liked_anime.all
    end

    def new
        @like = Liked_anime.new
        @user = User.all 
        @anime = Anime.all 
    end

    def create
        @like = Liked_anime.create(liked_params)
        redirect_to animes_path
    end 

    def show
        @like = Liked_anime.find(params[:id])
    end
    
    def destroy
        @like.destroy
        redirect_to user_path
    end 
    
    private

    def liked_params
        params.require(:liked_animes).permit(:anime_id)
    end
end

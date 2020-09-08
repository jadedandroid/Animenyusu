class AnimesController < ApplicationController


    def new
        @anime = Anime.new
    end

    def create
        @anime = Anime.create(anime_params)
    end

    def index 
        @anime = Anime.all
    end

    def show
        @anime =Anime.find(params[:id])
    end


    private 
    
    # def update

    # end

    def anime_params
        params.require(:animes).permit(:name, :description)
    end

    # def destroy

    # end

end

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

    end


    private 
    
    def update

    end

    def anime_params
        params.require(:animes).permit(:name, :description)
    end

    def 

    end
end

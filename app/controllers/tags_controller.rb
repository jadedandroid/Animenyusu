class TagsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    
    def index
        @tags = Tag.all
    end

    def new
        @tag = Tag.new
    end

    def create
        @tag = Tag.create(tag_params)
    end

    def show
        @tag = Tag.all
    end
    private
    def tag_params
        params.require(:tag).permit(:genre)
    end
    


end

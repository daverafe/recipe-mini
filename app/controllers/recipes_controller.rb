class RecipesController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end
    
    def destroy
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :ingredients, :img_url)
    end

end

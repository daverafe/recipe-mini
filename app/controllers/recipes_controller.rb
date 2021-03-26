class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all 
    end

    def new
        @recipe = Recipe.new 
    end

    def create
        @recipe = Recipe.new(recipe_params)
        @recipe.save
        redirect_to recipe_path(@recipe)
    end

    def show
        get_recipe
    end

    def edit
        get_recipe
    end

    def update
        get_recipe
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end
    
    def destroy
        get_recipe
        @recipe.destroy 
        redirect_to recipes_path 
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :ingredients, :img_url)
    end

    def get_recipe
        @recipe = Recipe.find_by_id(params[:id])
    end

end

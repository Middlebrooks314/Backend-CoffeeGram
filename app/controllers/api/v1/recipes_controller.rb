class Api::V1::RecipesController < ApplicationController
    before_action :set_recipe, only: [:show,:update,:destroy]
  
    def index
      recipes = Recipe.all
      render json: recipes, status: 200
    end
  
    def create
      recipe = Recipe.create(recipe_params)
      render json: recipe, status: 201
    end
  
    def update
      @recipe.update(recipe_params)
      render json: @recipe, status: 200
    end
  
    def destroy
      recipeId = @recipe.id
      @recipe.destroy
      render json: {message:"Recipe deleted!", recipeId:recipeId}
    end
  
    def show
      render json: @recipe, status: 200
    end
  
    private
    def recipe_params
      params.permit(:body, :title, :user_id)
    end
  
    def set_recipe
      @note = Note.find(params[:id])
    end
  end
  
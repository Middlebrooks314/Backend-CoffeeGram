class Api::V1::RecipesController < ApplicationController
    before_action :set_recipe, only: [:show,:update,:destroy]
  
    def index
      recipes = Recipe.all
      render json: recipes, include: [:user ], status: 200
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
      render json: @recipe.as_json(methods: [:username]), status: 200
      render json: @recipe, status: 200

    end
  
    private
    def recipe_params
      params.require(:recipe).permit(:title, :method, :coffee, :water, :watertemp, :grindsize, :time, :instructions, :image, :user_id, :notes)
    end
  
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
  end
  
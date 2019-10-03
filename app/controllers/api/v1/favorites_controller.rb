class Api::V1::FavoritesController < ApplicationController
        before_action :set_favorite, only: [:destroy]
      
        def create
          favorite = Favorite.new(favorite_params)
          p #################favorite#########################
          if favorite.save
            render json: favorite, status: :created
          else
            render json: {errors: favorite.errors.full_messages}, status: :not_acceptable
          end
        end
      
        def destroy
            p '******************DELETE FAV*************'
          favorite = Favorite.find_by(id: params[:id])
          favorite.destroy
          render json: {message: "Unfavorited"}
        end
      
        private
      
        def set_favorite
          favorite = Favorite.find_by(id: params[:id])
        end
      
        def favorite_params
          params.require(:favorite).permit(:user_id, :recipe_id)
        end
        
      end
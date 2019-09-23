class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show,:update,:destroy]

    def index
        users = User.all
        render json: users, status: 200
      end

    def create
        user = User.new(user_params)
        if user.save 
            render json: user.to_json(except: [:created_at , :updated_at])

        else
            render json: {error: 'Username already exists, please choose another'}
        end 
    end 

    def update
      @user.update(user_params)
      render json: @user, status: 200
    end
  
    def destroy
      userId = @user.id
      @user.destroy
      render json: {message:"User deleted", userId:userId}
    end

    def show
      render json: @user, status: 200
    end
  
    private
    
    def user_params 
      params.require(:user).permit(:username, :password, :about, :image)
    end 
  
    def set_user
      @user = User.find(params[:id])
    end
  end


  
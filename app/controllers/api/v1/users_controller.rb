require 'pry'

class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show,:update,:destroy]
  # skip_before_action :authorized, only: [:create]

    def profile
      # binding.pry
      p current_user
      p "==================================================="
      if current_user
        render json: { user: UserSerializer.new(current_user)}, status: :accepted
      else 
        render json: { message: 'invalid token'}
      end

      # {, favorites: current_user.favorites} was next to current_user
    end

    def index
        users = User.all
        render json: users, status: 200
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { message: 'Username exists, please choose a different one' }, status: :not_acceptable
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

    # def show
    #   render json: @user, status: 200
    # end

    def show 
      user = User.find_by(id: params[:id])
      render json: user.to_json(include: [:recipes])
    end 
  
    
    private
    
    def user_params 
      params.require(:user).permit(:username, :password, :about, :image)
    end 
  
    def set_user
      @user = User.find(params[:id])
    end
  end


  
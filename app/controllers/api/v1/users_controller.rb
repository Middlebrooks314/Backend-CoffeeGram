class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show,:update,:destroy]
  # skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

    def index
        users = User.all
        render json: users, status: 200
      end

    # def create
    #     user = User.new(user_params)
    #     if user.save 
    #         render json: user.to_json(except: [:created_at , :updated_at])

    #     else
    #         render json: {error: 'Username already exists, please choose another'}
    #     end 
    # end 

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
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


  
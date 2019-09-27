class Api::V1::AuthController < ApplicationController
    # skip_before_action :authorized, only: [:create]
 
  def create
    @user = User.find_by(username: user_login_params[:username])
    #User#authenticate comes from BCrypt
    if @user && @user.authenticate(user_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end
 
  def show
    # Takes the token through an Authorization header and parse into the logged_in? method on the application controller
    if logged_in?
      # current_user
      render json: {user: current_user}, status: :accepted
    else
      render json: {error: 'Invalid Token'}, status: :unauthorized
    end

  end

  private
 
  def user_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:user).permit(:username, :password)
  end
end


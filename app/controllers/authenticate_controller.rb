class AuthenticateController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      @user.generate_token(:auth_token)
      @user.save
      render json: @user
    else
      head :unauthorized
    end
  end

  def destroy
    authenticate_or_request_with_http_token do |token, options|
      @user = User.find_by(auth_token: token)
    end
    if @user
      @user.auth_token = nil
      @user.save
      render json: '', status: :ok
    else
      head :unauthorized
    end
  end


end

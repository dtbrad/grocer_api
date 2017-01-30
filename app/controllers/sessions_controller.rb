class SessionsController < ApplicationController

  def login
    params.inspect
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      render json: user
    else
      render json: { message: "Unable to find a user with that email and password" }
    end
  end

end

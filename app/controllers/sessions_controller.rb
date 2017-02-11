class SessionsController < ApplicationController

  def login
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      jwt = Auth.encode({user: user.id})
      render json: {jwt: jwt, message: ["Login successful!"]}
    else
      render json: { message: ["Unable to find a user with that email and password"]}
    end
  end

  private
    def auth_params
      params.require(:auth).permit(:email, :password)
    end

end

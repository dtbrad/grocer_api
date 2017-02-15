class UsersController < ApplicationController

  def signup
    user = User.new(user_params)
    if user.save
      response.headers["jwt"] = Auth.encode({user: user.id})
      render json: { message: ["Registration successful!"]}
    else
      render json: { message: user.errors.full_messages }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

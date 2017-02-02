class UsersController < ApplicationController

  def signup
    user = User.new(user_params)
    if user.save
      jwt = Auth.encode({user: user.id})
      render json: {jwt: jwt}
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

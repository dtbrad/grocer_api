class ProductsController < ApplicationController

  def index
    if @current_user ||= User.find_by(id: Auth.decode(request.env["HTTP_AUTHORIZATION"])["user"])
      render json: @current_user.products.distinct, scope: @current_user
    else
      render json: { error: { message: ["You must have a valid token"]}}
    end
  end
end

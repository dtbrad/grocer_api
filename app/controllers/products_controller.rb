class ProductsController < ApplicationController

  def index
    token = request.env["HTTP_AUTHORIZATION"]
    if token && Auth.decode(token)
      render json: Product.all.limit(10)
    else
      render json: { error: { message: ["You must have a valid token"]}}
    end
  end
end

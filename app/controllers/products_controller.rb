class ProductsController < ApplicationController

  def index
    # binding.pry
    token = request.env["HTTP_AUTHORIZATION"]
    binding.pry
    if Auth.decode(token)
      render json: Product.all
    else
      render json: { error: { message: "You must have a valid token"}}
    end
  end

end

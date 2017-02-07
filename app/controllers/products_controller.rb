class ProductsController < ApplicationController

  def index
    # token = request.env["HTTP_AUTHORIZATION"]
    # if token && Auth.decode(token)
      render json: Product.all
  end
  #   else
  #     render json: { error: { message: "You must have a valid token"}}, status: 500
  #   end
  # end
end

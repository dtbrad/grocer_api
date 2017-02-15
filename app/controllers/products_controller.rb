class ProductsController < ApplicationController
  before_action :current_user

  def index
    products = @current_user.products.filtered_products.distinct
    render json: products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product, scope: @current_user
  end

  private

  def current_user
    if @current_user ||= User.find_by(id: Auth.decode(request.env["HTTP_AUTHORIZATION"])["user"])
      response.headers["jwt"] = Auth.encode({user: @current_user.id})
    else
      render json: { error: { message: ["You must have a valid token"]}}
    end
  end
end

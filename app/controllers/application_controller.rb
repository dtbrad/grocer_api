require 'Auth'
class ApplicationController < ActionController::API
  # before_action :authenticate
  #
  # def logged_in?
  #   binding.pry
  #   !!current_user
  # end
  #
  # def current_user
  #   binding.pry
  #   if auth_present?
  #     binding.pry
  #     user = User.find(auth["user"])
  #     if user
  #       @current_user ||= user
  #     end
  #   end
  # end
  #
  # def authenticate
  #   binding.pry
  #   if logged_in?
  #   else
  #     render json: {error: "unauthorized"}, status: 401
  #   end
  # end
  #
  # private
  #
  #   def token
  #     binding.pry
  #     request.env["HTTP_AUTHORIZATION"]
  #     request.env["HTTP_AUTHORIZATION"].scan(/Bearer
  #       (.*)$/).flatten.last
  #   end
  #
  #   def auth
  #     binding.pry
  #     Auth.decode(token)
  #   end
  #
  #   def auth_present?
  #     binding.pry
  #     !!request.env.fetch("HTTP_AUTHORIZATION",
  #       "").scan(/Bearer/).flatten.first
  #   end
end

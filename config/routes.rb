Rails.application.routes.draw do

  post '/signup', to: "users#signup"
  post '/login', to: "sessions#login"

end

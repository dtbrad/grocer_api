Rails.application.routes.draw do

  post '/signup', to: "users#signup"
  post '/login', to: "sessions#login"

  get '/products', to: "products#index"
  get '/products/:id', to: "products#show"

end

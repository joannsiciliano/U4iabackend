Rails.application.routes.draw do
  resources :social_media_posts, only: [:index,:destroy,:create,:update]
  resources :users
  post "/login", to: "users#login"
  get '/profile', to: "users#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users

  resources :articles

  # resources :articles do
  #   resources :comments, except: [:edit, :update, :destroy]
  # end

  root "articles#index"

  get '/manage', to: "articles#manage"
  get '/search', to: "articles#search"

  get '/latest', to: "articles#latest"
  get '/us', to: "articles#us"
  get '/politics', to: "articles#politics"
  get '/business', to: "articles#business"
  get '/sports', to: "articles#sports"
  get '/opinion', to: "articles#opinion"

  get '/profile', to: "user#profile"
end

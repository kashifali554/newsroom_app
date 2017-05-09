Rails.application.routes.draw do
  devise_for :users

  resources :articles

  # resources :articles do
  #   resources :comments, except: [:edit, :update, :destroy]
  # end

  root "articles#index"
  get '/profile', to: "user#profile"
end

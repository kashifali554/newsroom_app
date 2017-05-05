Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :articles

  root "articles#home"
  get '/profile', to: "user#profile"
end

Rails.application.routes.draw do
  devise_for :users
  resources :articles

  root to: "articles#home"
  get '/profile', to: "user#profile"
end

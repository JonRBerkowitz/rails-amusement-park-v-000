Rails.application.routes.draw do
  root 'application#index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
  get '/attractions', to: 'attractions#index'
  resources :attractions
end

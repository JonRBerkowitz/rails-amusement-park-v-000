Rails.application.routes.draw do
  root 'application#index'
  get '/signin', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'
  resources :users
end

Rails.application.routes.draw do

  get 'pages/home'
  root 'pages#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  resources :reviews
  resources :products
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

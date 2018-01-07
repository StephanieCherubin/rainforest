Rails.application.routes.draw do
  resources :reviews
  resources :products
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

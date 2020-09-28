Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :meal
  root to: 'meal#index'
  get '/request_meal', to: 'meal#request_meal' 
end

Rails.application.routes.draw do
  resources :payments
  resources :carts
  resources :products
  resources :users
  get '/', to: 'static_page#home'
  get '/users', to: 'users#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

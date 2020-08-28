Rails.application.routes.draw do
  resources :carts
  resources :products
  resources :users 
  get '/', to: 'static_page#home'
  post '/sign_up', to: 'register#sign_up'
  post '/login', to: 'sign_in#login'
  get '/current_user', to: 'application#is_logged'
  get '/products', to: 'products#index'
  post '/products', to: 'products#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

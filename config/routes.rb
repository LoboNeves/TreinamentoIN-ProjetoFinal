Rails.application.routes.draw do
  
  resources :payments
  resources :carts
  resources :products
  resources :users
  post '/login', to: 'sign_in#login'
  get '/', to: 'static_page#home'
  post '/sign_up', to: 'register#sign_up'
  get '/current_user', to: 'application#is_logged'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

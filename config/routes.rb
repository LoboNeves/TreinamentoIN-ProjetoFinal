Rails.application.routes.draw do
  resources :payments
  resources :carts
  resources :products
  resources :users

  get '/', to: 'static_page#home'
  post '/sign_up', to: 'register#sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

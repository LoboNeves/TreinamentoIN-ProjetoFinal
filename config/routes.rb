Rails.application.routes.draw do
  resources :users
  get '/', to: 'static_page#home'
  get 'https://projetofinalin.herokuapp.com/users', to: 'users#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # get '/users' => 'users#index'
  resources :champions
  resources :users
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

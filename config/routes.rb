Rails.application.routes.draw do
  root 'home#index'
  resources :users, controller: 'users'
end

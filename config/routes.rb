Rails.application.routes.draw do
  root 'home#index'
  get 'posts/:id/edit', to: 'posts#edit'
  post 'posts/:id/edit', to: 'posts#update'
  resources :users, controller: 'users'
end

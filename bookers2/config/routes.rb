Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  devise_for :users
  root to: 'homes#top'
  
  get 'home/about', to: 'homes#about'
  resources :books, only: [:create, :index, :show, :destroy, :update, :edit]
  resources :users, only: [:show, :index, :edit, :update]
end

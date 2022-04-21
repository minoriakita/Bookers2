Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get 'home/about', as: 'about'

  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]

end

Rails.application.routes.draw do
  # get 'posts/new'
  devise_for :users
  root 'posts#index'
  
  resources :posts, only: [:index, :new, :create, :show, :destroy]
end

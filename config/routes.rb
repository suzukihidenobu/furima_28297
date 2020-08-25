Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  post 'items', to: 'items#create'
  get 'items', to: 'items#checked'
  get 'posts/:id', to: 'posts#checked'
  
  # get 'items/index'
  # get 'home/index'
  # get 'articles/index'
  # get 'articles/new'
  

  resources :users, only: [:edit, :update]
  resources :items, only: [:new, :create, :show] do
  resources :purchases, only: [:index, :creat]
  resources :users, only: :show
  end
  ##resources :articles
end

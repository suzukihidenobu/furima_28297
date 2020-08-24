Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  # get 'items/index'
  # get 'home/index'
  # get 'articles/index'
  # get 'articles/new'
  

  resources :users, only: [:edit, :update]
  resources :items, only: [:new, :create] do
    resources :purchases, only: [:index, :creat]
  end
  ##resources :articles
end

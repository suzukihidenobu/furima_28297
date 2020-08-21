Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  get 'home/index'
  get 'articles/index'
  get 'articles/new'
  
  root to: "items#index"
  
  resources :articles
end

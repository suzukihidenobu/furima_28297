Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'articles/index'
  get 'articles/new'
  root to: 'articles#index'
  resources :articles
end

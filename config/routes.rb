Rails.application.routes.draw do
  get 'purchases/new'
  devise_for :users 
  root to: "items#index" 
  resources :items do
  resources :purchases, only: [:index, :create, :edit, :destory,:update]
  post 'order', on: :member
  end
  end


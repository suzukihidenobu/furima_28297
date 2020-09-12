Rails.application.routes.draw do
  get 'purchases/new'
  devise_for :users # 自動で追記されます
  


  root to: "items#index" #投稿記事の一覧が表示できる機能を実装しました。
  #itemコントローラーのindexアクションがトップページとなるようにしました。
  
  # resources :items #, only: [:index, :new, :create,:edit]
  #resourcesは、7つのアクションをまとめてルーティングの設定ができるので7つのアクションすべてを記述した今、only以下は不要です。これらを削除しましょう。
 
  
  
  #ユーザー編集に必要なルーティングは、editとupdateなので、
  #routes.rbに、 resources :users, only: [:edit, :update]と追記します。
  # resources :users, only: [:edit, :update] 
  resources :items do# resources :items, only: [:new, :create, :show] do #showアクションのルーティングを設定します
    resources :purchases, only: [:index, :create, :edit, :destory,:update]
    # resources :purchases, only: [ :create] #カード登録機能を実装
    post 'order', on: :member
     
  end
  ##resources :articles
end


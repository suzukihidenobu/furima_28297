class PurchasesController < ApplicationController
  before_action :set_purchases, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
  # before_action :set_purchases, only: [:index, :show]
  def index
    @item = Item.find(params[:item_id])
    if @item.purchase != nil || @item.user == current_user
      redirect_to root_path
    end
    @purchases = UserCards.new
  end
  # 出品者であるAさんが直接購入ページ（http://localhost:3000/items/5/dealings）を入力すると、トップページに遷移する
  # つまり、自分で出品した商品は買えなくしている↓
  # redirect_to root_url if !set_item.dealing.nil? || current_user.id == set_item.user_id
  # @puchases = UserPurchases.new

  def new
    @purchases = UserCards.new
  end

  def create
    # @purchases = UserCards.new(purchases: purchases_params[:postal_code, :shipping_area, :city, :es, :building, :phone, :commit, :item_id])
    @purchases = UserCards.new(purchases_params)
    @item = Item.find(params[:item_id])
    # binding.pry
    if @purchases.valid?

      # binding.pry

      pay_item
      @purchases.save
      redirect_to root_path
    else
      render 'index'
    end
  end

   private

  def purchases_params
    params.permit(:postal_code, :shipping_area, :city, :address_number, :building,
                  :shipping_area, :phone, :token, :item_id).merge(user_id: current_user.id)
  end

  def set_purchases
    @purchases = Purchases.find(params[:id])
  end

  def pay_item
    Payjp.api_key = 'sk_test_3aa9bc13a3833dee213f87e6' # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @item.price, # 商品の値段
      card: purchases_params[:token], # カードトークン
      currency: 'jpy' # 通貨の種類(日本円)
    )
  end

  def move_to_index
    
    redirect_to action: :index unless user_signed_in?
  end
 end

#  def correct_user
#   @purchases = current_user.purchases.find_by(id: params[:id])
#     unless @index
#       redirect_to root_url
#     end
#  end

# Payjp.api_key = ENV["PAYJP_SECRET_KEY"] # PAY.JPのメソッドを利用するためには、環境変数を読み込む
#     customer = Payjp::Customer.create(  #顧客に紐づいているカードの情報を生成しましょう。（8~10行目）
#     description: 'test', # テストカードであることを説明
#     :purchases params[:purchases_token] # 登録しようとしているカード情報
#     )

#     purchases = Purchases.new( # トークン化されたカード情報を保存する
#       purchases_token: params[:purchases_token], # カードトークン
#       customer_token: customer.id, # 顧客トークン
#       user_id: current_user.id # ログインしているユーザー
#     )
#     #  具体的なカード情報（カード番号など）をデータベースに保存することは法律上禁止されていますが、
# # トークン化された情報であれば保存可能です
#     if purchases.save
#       redirect_to root_path
#     else
#       redirect_to "new" # カード登録画面、カードの登録後はトップページにリダイレクトされるようにしました。
#     end

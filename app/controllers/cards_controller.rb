class CardsController < ApplicationController
  
  def new
    @cards = UserCards.new   #「UserCards」に編集
  end

  def create
    @cards = UserCards.new(cards_params)   #「Userards」に編集
    @cards.save

    if @cards.valid?
      @cards.save  # バリデーションをクリアした時
      return redirect_to root_path
    else
      render "new"    # バリデーションに弾かれた時
    end

  end

  private

 def cards_params
  #「住所」「寄付金」のキーも追加
  params.require(:user_dcards).permit(:name, :name_reading, :nickname, :postal_code, :prefecture, :city, :house_number, :building_name, :price)
 end

    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] # PAY.JPのメソッドを利用するためには、環境変数を読み込む
    customer = Payjp::Customer.create(  #顧客に紐づいているカードの情報を生成しましょう。（8~10行目）
    description: 'test', # テストカードであることを説明
    card: params[:card_token] # 登録しようとしているカード情報
    )

    card = Card.new( # トークン化されたカード情報を保存する
      card_token: params[:card_token], # カードトークン
      customer_token: customer.id, # 顧客トークン
      user_id: current_user.id # ログインしているユーザー
    )
    #  具体的なカード情報（カード番号など）をデータベースに保存することは法律上禁止されていますが、
# トークン化された情報であれば保存可能です
    if card.save
      redirect_to root_path
    else
      redirect_to "new" # カード登録画面、カードの登録後はトップページにリダイレクトされるようにしました。
    end

  end


class UsersController < ApplicationController
  def show
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] # 環境変数を読み込む,ログインしているユーザーに紐付くカード情報を取得
    purchases = Purchases.find_by(user_id: current_user.id) # ユーザーのid情報を元に、カード情報を取得
   
   redirect_to new_purchase_path and return unless purchases.present? #登録したカードが存在（present）しているかどうかで判断しています。

   customer = Payjp::Customer.retrieve(purchases.customer_token) # 先程のカード情報を元に、顧客情報を取得
   @purchases = customer.purchases.first #「customer.cards.first」とすることで、カード情報も取得できます。
   #これは、顧客が複数カード登録している場合、その内の「最初のカード（first）情報を取得する」

    user = User.find(params[:id]
    @nickname = current_user.nickname
    @items = current_user.items
    # 文字通り、現在いるページのパスを示します。
  end
  def edit
  end
#updateアクション内で、保存できた場合とできなかった場合で条件分岐の処理を行います。
#current_user.updateに成功した場合、root（チャット画面）にリダイレクトします。
#失敗した場合、render :editとeditのアクションを指定しているため、editのビューが表示されます。
  def update
    if current_user.update(user_params) #Userモデルの更新を行うupdateアクションをusersコントローラーに定義しましょう。
      redirect_to root_path 
    else
      render :edit
    end
  end

  private
#ストロングパラメーターを使用し、user_paramsを定義しました。
#user_paramsの中でpermitメソッドを使用し、「nickname」と「email」の編集を許可しました。
#そして、ユーザー情報が格納されているcurrent_userメソッドを使用して、ログインしているユーザ
  def user_params
    params.require(:user).permit(:nickname, :first_name, :last_name,
       :first_name_kana, :last_name_kana, :birthday, :email, :encrypted_password)
  end
end


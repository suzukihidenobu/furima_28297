class ApplicationController < ActionController::Base
  #デプロイ（Heroku）
#〜ユーザー認証の導入〜


  # before_action :authenticate_user! ##クレジットカード決済機能,サインアップ時に、ユーザーの名前を登録できるように編集しました。
  before_action :configure_permitted_parameters, if: :devise_controller?
  #RailsアプリケーションにBasic認証を導入しましょう
  #Basic認証によるログインの要求は、すべてのコントローラーで行いたいです。
  #そこで、Basic認証の処理をapplication_controller.rbのprivate以下にメソッドとして定義し、
  #before_actionで呼び出しましょう。


  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :last_name,
      :first_name_kana, :last_name_kana, :birthday, :email, :encrypted_password])
#devise_parameter_sanitizerメソッド
#deviseにおけるparamsのようなメソッドです。deviseのUserモデルに関わる「ログイン」「新規登録」などのリクエストからパラメーターを取得できます。

#このメソッドとpermitメソッドを組み合わせることにより、deviseに定義されているストロングパラメーターに対し、自分で新しく追加したカラムも指定して含めることができます。


  devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname]) #クレジットカード決済機能
 
  #Railsでは、悪意のあるユーザーの入力に対してセキュリティ対策を行わないと保存できない仕組みがあります。
  #通常のテーブルに保存する際はストロングパラメータを使用しましたが、deviseを使ったモデルの場合は方法が異なります。
  #上のコードは、deviseの公式サイトで紹介されている書き方です。そのまま使用するものという理解でも問題ない。
end  
   private
def basic_auth
    authenticate_or_request_with_http_basic do |username, password|

      username == 'furima' && password == 'Suki5995'
    end
  end
end
#Basic認証とは、HTTP通信の規格に備え付けられている、認証方式の1つであること
#BASIC_AUTH_USERとBASIC_AUTH_PASSWORDという名前で、
#それぞれユーザー名とパスワードを定義できました。

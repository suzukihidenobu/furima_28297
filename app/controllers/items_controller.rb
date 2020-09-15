class ItemsController < ApplicationController  #アッパーキャメルケース先頭から単語の区切りを大文字で表す
  before_action :set_item, only: [:edit, :show]
  before_action :authenticate_user!,only: [:new,:edit]
  # before_action :move_to_index, except: [:index, :show]

def index
  @items = Item.all
  # allメソッドを使用して、timssテーブルすべてのレコードをインスタンス変数に代入し、ビューに受け渡します。
  @items = Item.order("created_at DESC") #記事一覧が新規投稿順に並ぶように記述します。
end

def new
@item = Item.new # items_controller.rbにnewアクションを定義します。


end

def create
  @item = Item.new(item_params)
  if @item.valid?
    @item.save
  else
    render :new
  end
  # Item.create(item_params) # createアクション内のcreateメソッドで実行します。
end

def destroy
  item = Item.find(params[:id])
  item.destroy
end

def edit
end

def update
  item = Item.find(params[:id])
  item.update(item_params)
end

def show
end
# item_paramsというストロングパラメーターを定義し、createメソッドの引数に使用して、itemssテーブルへ保存できるようにしました。
private
def item_params
  params.require(:item).permit(:image, :name, :price, :item_info,
    :category_name, :condition, :delivery_burden, :shipping_area,
     :shipping_days).merge(user_id: current_user.id)
end

def set_item
  @item = Item.find(params[:id])
end

def move_to_index
  redirect_to action: :index
end
end

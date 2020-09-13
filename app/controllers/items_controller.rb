
class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    # @items = Item.all.order(id: "DESC")
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

  def edit
  end

  def update
    item = Item.find(params[:id])
    item.update(tweet_params)
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

  def set_tweet
    @item = Item.find(params[:id])
  end

  def move_to_index

    unless user_signed_in?
      redirect_to action: :index
    end

  end
end

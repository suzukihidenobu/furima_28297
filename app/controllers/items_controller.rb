class ItemsController < ApplicationController  # アッパーキャメルケース先頭から単語の区切りを大文字で表す
  before_action :set_item, only: [:edit, :show, :update]
  before_action :authenticate_user!, only: [:new, :edit]

  # before_action :move_to_index, except: [:index, :show]

  def index
   
    @items = Item.order('created_at DESC') 


  end

  def new
    @item = Item.new # items_controller.rbにnewアクションを定義します。
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path

    else
      render :new
    end
    # Item.create(item_params) # createアクション内のcreateメソッドで実行します。
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end



  def update
    if @item.update(item_params)
      redirect_to item_path
    else
      render 'edit'
    end
  end



  def show
    # @item = Item.find(params[:id])
  end


 private
  def item_params
    params.require(:item).permit(:image, :name, :price, :item_info,:category_name_id, :condition_id,
      :delivery_burden_id, :shipping_area_id,:shipping_days_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index
  end
end

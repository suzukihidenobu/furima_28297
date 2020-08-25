class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @items = Item.all.order(id: "DESC")
  end

  def new
    @tweet = Item.new
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

  private
  def item_params
    params.require(:item).permit(:name, :image, :text)
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

class PurchasesController < ApplicationController
  before_action :set_purchases, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @item = Item.find(params[:item_id])
    redirect_to root_path if !@item.purchase.nil? || @item.user == current_user
    @purchases = UserCards.new
  end

  def new
    @purchases = UserCards.new
  end

  def create
    @purchases = UserCards.new(purchases_params)
    @item = Item.find(params[:item_id])

    if @purchases.valid?

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
    Payjp.api_key = 'sk_test_3aa9bc13a3833dee213f87e6'
    Payjp::Charge.create(
      amount: @item.price,
      card: purchases_params[:token],
      currency: 'jpy'
    )
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
 end

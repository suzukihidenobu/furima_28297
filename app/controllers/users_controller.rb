class UsersController < ApplicationController
  def show
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] 
    purchases = Purchases.find_by(user_id: current_user.id) 
   
   redirect_to new_purchase_path and return unless purchases.present? 

   customer = Payjp::Customer.retrieve(purchases.customer_token) 
   @purchases = customer.purchases.first 


    user = User.find(params[:id]
    @nickname = current_user.nickname
    @items = current_user.items
  
  end
  def edit
  end

  def update
    if current_user.update(user_params) 
      redirect_to root_path 
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :first_name, :last_name,
       :first_name_kana, :last_name_kana, :birthday, :email, :encrypted_password)
  end
end


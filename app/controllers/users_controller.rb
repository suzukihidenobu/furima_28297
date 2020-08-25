class UsersController < ApplicationController
  def show
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



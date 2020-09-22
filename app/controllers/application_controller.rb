class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :last_name,
                                                       :first_name_kana, :last_name_kana, :birthday, :email, :encrypted_password])



    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname]) 
  end


  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'furima' && password == 'Suki5995'
    end
    end
end


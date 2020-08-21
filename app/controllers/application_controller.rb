class ApplicationController < ActionController::Base
  before_action :basic_auth


  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'furima_28297_鈴木英亘' && password == 'Suki5995'
    end
  end
end
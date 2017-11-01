class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :home_path

  ##
  # Redirect user to his Wallet after sign in.
  def after_sign_in_path_for(_resource)
    wallet_url
  end

  def home_path
    if user_signed_in?
      @home_path = wallet_url
    else
      @home_path = root_path
    end    
  end
end

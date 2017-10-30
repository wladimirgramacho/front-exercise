class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  ##
  # Redirect user to his Wallet after sign in.
  def after_sign_in_path_for(_resource)
    wallet_url
  end
end

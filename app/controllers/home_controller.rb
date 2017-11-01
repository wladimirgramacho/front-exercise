class HomeController < ApplicationController
  before_action :authenticate_user!, only: :wallet

	def index
	end

  def wallet
    @wallet = current_user.wallet
  end
end
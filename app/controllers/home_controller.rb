class HomeController < ApplicationController
  before_action :authenticate_user!, only: :wallet

	def index
	end

  def wallet
    @transactions = Transaction.where(user_id: current_user)
  end
end
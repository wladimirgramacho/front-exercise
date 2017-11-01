class HomeController < ApplicationController
  before_action :authenticate_user!, only: :wallet

	def index
	end

  def wallet
    @wallet = current_user.transactions.group(:coin_id).order("sum_quantity DESC").sum(:quantity)
  end
end
class HomeController < ApplicationController
  before_action :authenticate_user!, only: :wallet

	def index
	end

  def wallet
    @transactions = Transaction.where(user: current_user)
    coins = @transactions.map(&:coin).uniq
    @wallet = {}

    coins.each do |coin|
      var = @transactions.select{ |t| t.coin == coin}
      total = var.reduce(0){|sum, t| sum + t.quantity}
      @wallet[coin.name] = total
    end
  end
end
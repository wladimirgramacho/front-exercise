class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
    @coins = Coin.all
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to wallet_url, notice: 'transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def sell
    @transaction = Transaction.new
    @coin = Coin.find(params[:coin_id])
    @max = current_user.wallet[@coin.id]
  end

  def subtract_transaction
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.quantity = -@transaction.quantity

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to wallet_url, notice: 'transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    def transaction_params
      params.require(:transaction).permit(:quantity, :coin_id)
    end
end

class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
    @coins = Coin.all
  end

  def create
    @transaction = Transaction.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_price
    if params[:transaction].present?
      @coin = Coin.find(params[:transaction])
      @data = Hash.new 
      @data["coin_price"] = @coin.price
      render json: @data and return false 
    end 
  end

  private
    def transaction_params
      params.require(:transaction).permit(:quantity, :coin_id, :user_id)
    end
end

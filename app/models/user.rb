class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :transactions, :dependent => :destroy  
  has_many :coins, :through => :transactions

  def wallet
    transactions.group(:coin_id).order("sum_quantity DESC").sum(:quantity)
  end
end

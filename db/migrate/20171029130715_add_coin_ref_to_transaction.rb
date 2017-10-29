class AddCoinRefToTransaction < ActiveRecord::Migration[5.1]
  def change
    add_reference :transactions, :coin, foreign_key: true
  end
end

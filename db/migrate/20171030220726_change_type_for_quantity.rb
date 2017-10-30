class ChangeTypeForQuantity < ActiveRecord::Migration[5.1]
  def change
    change_column :transactions, :quantity, :float
  end
end

class AddStockToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :stock, :integer
    change_column :books, :price, :decimal
  end
end

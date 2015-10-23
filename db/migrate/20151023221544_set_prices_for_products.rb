class SetPricesForProducts < ActiveRecord::Migration
  def change
    Product.find(6).update_column(:price, 1200)
    Product.find(6).update_column(:price, 450)
    Product.find(6).update_column(:price, 780)
  end
end

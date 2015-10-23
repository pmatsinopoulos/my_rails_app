class UpdateProductPrices < ActiveRecord::Migration
  def change
    Product.find(6).update_column(:price, 1200)
    Product.find(5).update_column(:price, 450)
    Product.find(4).update_column(:price, 780)
  end
end

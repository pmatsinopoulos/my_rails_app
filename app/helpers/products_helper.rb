module ProductsHelper
  # This is the way we build the cache key for the index page.
  # We invalidate the cache whenever a product is added or deleted (Product.count),
  # or whenever a product is updated (by including in the key the maximum updated_at date)
  def cache_key_for_products
    count          = Product.count
    max_updated_at = Product.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "products/all-#{count}-#{max_updated_at}"
  end
end

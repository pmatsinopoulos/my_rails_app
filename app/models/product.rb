class Product < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :orders
  has_many :comments
  validates :name, presence: true
  
  def average_rating
    comments.average(:rating).to_f
  end

  # We make sure that the cache_key contains the default cache_key value (from 'super')
  # plus the number of comments for the particular product. So, if any comment is added
  # or deleted, we make sure that the product show page will be invalidated from cache
  # and will be rebuilt again.
  #
  def cache_key
  "#{super}-#{comments.count}"
  end
end

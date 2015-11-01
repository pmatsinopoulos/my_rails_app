class Product < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :orders
  has_many :comments
  validates :name, presence: true
  
  def average_rating
    comments.average(:rating).to_f
  end
  
  def cache_key
  "#{id}-#{updated.to_s(:number)}"
  end
end

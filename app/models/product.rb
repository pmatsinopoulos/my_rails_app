class Product < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :orders
  has_many :comments
  
  def average_rating
    comments.average(:rating).to_f
  end
end

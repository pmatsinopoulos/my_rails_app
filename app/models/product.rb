class Product < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :orders
  has_many :comments
end

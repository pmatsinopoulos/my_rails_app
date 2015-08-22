class Product < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :orders
end

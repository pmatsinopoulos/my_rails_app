class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
end

class AddAdminFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false, null: false
  end
end

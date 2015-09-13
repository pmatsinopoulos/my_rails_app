class AddAdminFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
  end
  
  def set_user_admin
    update User.find(2) :admin => true
end

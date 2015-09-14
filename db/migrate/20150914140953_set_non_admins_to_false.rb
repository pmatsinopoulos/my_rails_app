class SetNonAdminsToFalse < ActiveRecord::Migration
  def change
    User.where(:admin => nil).update_all(:admin => false)
  end
end

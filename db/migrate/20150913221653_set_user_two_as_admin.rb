class SetUserTwoAsAdmin < ActiveRecord::Migration
  def change
    User.find(2).update_column(:admin, true)
  end
end

class SetAdminByEmail < ActiveRecord::Migration
  def change
    User.find_by_email("webstartyours@gmail.com").update(:admin => true)
  end
end

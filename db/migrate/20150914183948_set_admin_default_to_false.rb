class SetAdminDefaultToFalse < ActiveRecord::Migration
  def up
    change_column_default(:users, :admin, false)
  end
end

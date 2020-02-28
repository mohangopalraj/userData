class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :superadmin_role, :boolean
    add_column :users, :supervisior_role, :boolean
    add_column :users, :user_role, :boolean
  end
end

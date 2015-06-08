class ChangeDefaultMemberships < ActiveRecord::Migration
  def change
    change_column :memberships, :approved, :boolean, :default => false
  end
end

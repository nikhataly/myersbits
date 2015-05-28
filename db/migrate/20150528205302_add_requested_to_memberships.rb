class AddRequestedToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :pending, :boolean, :default => true
  end
end

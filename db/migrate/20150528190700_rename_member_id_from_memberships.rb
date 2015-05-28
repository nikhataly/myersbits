class RenameMemberIdFromMemberships < ActiveRecord::Migration
  def change
    rename_column :memberships, :member_id, :user_id
    rename_column :projects, :founder_id, :user_id

  end
end

class ChangePendingToApproved < ActiveRecord::Migration
  def change
    add_column :memberships, :approved, :boolean

    Membership.all.each do |membership|
      membership.approved = !membership.pending
      membership.save!
    end

    remove_column :memberships, :pending
  end
end

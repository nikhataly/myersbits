class ChangeColumnFromMemberships < ActiveRecord::Migration
  def change
     change_column :memberships, :approved, :boolean, :default => true

  end
end

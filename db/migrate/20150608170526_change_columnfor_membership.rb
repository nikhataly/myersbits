class ChangeColumnforMembership < ActiveRecord::Migration
  def change
      def change
     change_column :memberships, :approved, :boolean, :default => false

  end
  end
end

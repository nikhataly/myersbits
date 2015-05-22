class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personality_id, :integer
  end
end

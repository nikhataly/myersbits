class AddColumnToUsers < ActiveRecord::Migration
  def change
    remove_column :personalities, :type
    add_column :personalities, :personality_id, :integer
  end
end

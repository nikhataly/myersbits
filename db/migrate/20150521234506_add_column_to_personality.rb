class AddColumnToPersonality < ActiveRecord::Migration
  def change
    add_column :personalities, :user_id, :integer
  end
end

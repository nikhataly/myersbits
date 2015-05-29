class AddColumnToPersonality < ActiveRecord::Migration
  def change
    add_column :personalities, :as_leader, :text
    add_column :personalities, :as_team, :text
    add_column :personalities, :at_work, :text
    add_column :personalities, :traits, :text
  end
end

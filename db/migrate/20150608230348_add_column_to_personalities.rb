class AddColumnToPersonalities < ActiveRecord::Migration
  def change
    add_column :personalities, :description, :text
  end
end

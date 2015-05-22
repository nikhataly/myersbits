class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :extraversion, :integer
    add_column :users, :openness, :integer
    add_column :users, :agreeableness, :integer
    add_column :users, :conscientiousness, :integer
  end
end



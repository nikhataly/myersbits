class RemoveIntegerFromRecommendations < ActiveRecord::Migration
  def change
  remove_column :recommendations, :integer
    
  end
end

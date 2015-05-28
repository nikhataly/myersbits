class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :personality_id
      t.string :integer
      t.string :recommendation
      t.string :text

      t.timestamps null: false
    end
  end
end

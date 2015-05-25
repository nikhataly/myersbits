class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :extraversion
      t.integer :openness
      t.integer :agreeableness
      t.integer :conscientiousness

      t.text :answers

      t.integer :user_id

      t.timestamps null: false
    end
  end
end

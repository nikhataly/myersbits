class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.integer :extraversion
      t.integer :openness
      t.integer :agreeableness
      t.integer :conscientiousness

      t.timestamps null: false
    end
  end
end

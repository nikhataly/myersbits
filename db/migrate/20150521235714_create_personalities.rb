class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.string :mbti
      t.string :title

      t.timestamps null: false
    end
  end
end

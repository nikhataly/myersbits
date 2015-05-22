class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end

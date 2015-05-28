class CreateCompatibilities < ActiveRecord::Migration
  def change
    create_table :compatibilities do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end

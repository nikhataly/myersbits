class CreateProjects < ActiveRecord::Migration
  def change

    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.text :location
      t.integer :founder_id
      t.integer :type_id
      t.integer :participants

      t.timestamps null: false
    end
  end
end

class AddColumnToCompatibility < ActiveRecord::Migration
  def change
    add_column :compatibilities, :description, :string
  end
end

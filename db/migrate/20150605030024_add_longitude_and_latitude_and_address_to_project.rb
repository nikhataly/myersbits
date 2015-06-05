class AddLongitudeAndLatitudeAndAddressToProject < ActiveRecord::Migration
  def change
    add_column :projects, :address, :string
    add_column :projects, :longitude, :decimal, precision: 9, scale: 6
    add_column :projects, :latitude, :decimal, precision: 9, scale: 6
  end
end

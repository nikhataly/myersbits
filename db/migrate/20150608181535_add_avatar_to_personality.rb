class AddAvatarToPersonality < ActiveRecord::Migration
  def change
    add_column :personalities, :avatar, :string
  end
end

class DropTable < ActiveRecord::Migration
  def change
    drop_table :personalities
  end
end

class AddAnswersColumnToScores < ActiveRecord::Migration
  def change
    add_column :scores, :answers, :text
    remove_column :personalities, :avatar
  end
end

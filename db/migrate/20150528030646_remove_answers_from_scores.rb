class RemoveAnswersFromScores < ActiveRecord::Migration
  def change
    remove_column :scores, :answers
  end
end

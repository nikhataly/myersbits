class Score < ActiveRecord::Base
  belongs_to :user

  serialize :answers
end

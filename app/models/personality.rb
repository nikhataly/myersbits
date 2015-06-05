class Personality < ActiveRecord::Base
  has_many :users
  has_many :recommendations
  has_many :relationships, foreign_key: :primary_id
  has_many :personalities, through: :relationships, source: :secondary

  def self.[](mbti)
    find_by(mbti: mbti.to_s.upcase)
  end
end


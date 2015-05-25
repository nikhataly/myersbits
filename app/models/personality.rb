class Personality < ActiveRecord::Base
  has_many :users

  def self.[](mbti)
    find_by(mbti: mbti.to_s.upcase)
  end
end

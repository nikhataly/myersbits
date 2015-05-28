class Personality < ActiveRecord::Base
  has_many :users
  has_many :recommendations

  def self.[](mbti)
    find_by(mbti: mbti.to_s.upcase)
  end
end

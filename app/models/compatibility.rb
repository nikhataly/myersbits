class Compatibility < ActiveRecord::Base
  has_many :relationships
  
  def self.[](mbti)
    find_by(title: mbti.to_s.upcase)
  end
end

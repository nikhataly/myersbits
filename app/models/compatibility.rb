class Compatibility < ActiveRecord::Base
  def self.[](mbti)
    find_by(title: mbti.to_s.upcase)
  end
end

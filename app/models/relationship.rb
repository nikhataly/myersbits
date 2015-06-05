class Relationship < ActiveRecord::Base
  belongs_to :primary, class_name: "Personality"
  belongs_to :secondary, class_name: "Personality"
  belongs_to :compatibility

  def inspect
    "#<#{primary.mbti} is #{compatibility.title} to #{secondary.mbti}>"
  end

end

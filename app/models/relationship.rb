class Relationship < ActiveRecord::Base
  belongs_to :primary, class_name: "Personality"
  belongs_to :secondary, class_name: "Personality"
  belongs_to :compatibility
end

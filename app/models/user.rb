class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects, through: :memberships
  has_many :projects
  belongs_to :personality
end

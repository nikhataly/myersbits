class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects, through: :memberships
  has_many :projects
  belongs_to :personality
  has_many :relationships, through: :personality
  has_many :scores

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


end
# team.each do |team_member|
#   current_user.relationships.where(secondary: team_member.personality).first.compatibility
# end
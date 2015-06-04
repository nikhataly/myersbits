  class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :memberships
  has_many :membership_requests, through: :founded_projects, source: :memberships
  has_many :joined_projects, class_name: "Project", through: :memberships, source: :project
  has_many :founded_projects, class_name: "Project"

  def my_pending_requests
    self.memberships.where(approved: false)
  end

  def my_approved_requests
    self.memberships.where(approved: true)
  end

  belongs_to :personality
  has_many :relationships, through: :personality
  has_many :scores

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


  def is_founder?(project)
    project.user == self
  end

  def is_member?(project)
    project.memberships.include? self
  end

end
# team.each do |team_member|
#   current_user.relationships.where(secondary: team_member.personality).first.compatibility
# end



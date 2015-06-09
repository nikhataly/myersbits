class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :memberships
  has_many :membership_requests, through: :founded_projects, source: :memberships
  has_many :joined_projects, class_name: "Project", through: :memberships, source: :project
  has_many :founded_projects, class_name: "Project"

  belongs_to :personality
  has_many :relationships, through: :personality
  has_many :scores

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def my_pending_requests
    memberships.where(approved: false)
  end

  def my_approved_requests
    memberships.where(approved: true)
  end

  def is_founder?(project)
    project.user == self
  end

  def is_member?(project)
    memberships.where(project: project).any?
    # project.memberships.where(user: self).any?
  end

  def is_approved_member?(project)
    project.memberships.where(approved: true, user: self).any?
  end

  def is_participant?(project)
    is_founder?(project) || is_approved_member?(project)
  end

# team.each do |team_member|
#   current_user.relationships.where(secondary: team_member.personality).first.compatibility
# end

  # def inspect
  #   "#<User: #{name} (#{email}) => #{personality.mbti}>"
  # end


  def count_pending_membership_requests
    (membership_requests.where(approved: false)).count
  end

  #def
    #u = User.find(params[:id])
    #user.personality.relationships.where(compatibility_id:  2)
  #end

  mount_uploader :avatar, AvatarUploader

end



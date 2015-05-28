class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :memberships
  has_many :membership_requests, through: :founded_projects, source: :memberships
  has_many :joined_projects, class_name: "Project", through: :memberships, source: :project
  has_many :founded_projects, class_name: "Project"
  belongs_to :personality
  has_many :scores
  has_many :skills

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


end

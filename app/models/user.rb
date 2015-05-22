class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects, through: :memberships
  has_many :projects
  belongs_to :personality

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  validates :email, uniqueness: true
end

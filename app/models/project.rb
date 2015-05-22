class Project < ActiveRecord::Base
  belongs_to :founder, class_name "User"
  has_many :memberships
  has_many :members, :through :memberships, :source :member
end

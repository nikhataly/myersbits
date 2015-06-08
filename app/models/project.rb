class Project < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  has_many :memberships
  has_many :members, through: :memberships, source: :user

  validates :title, :description, presence: true
  validate :start_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end


  def approved_members
    #memberships.includes(:user).where(approved: true)

    members.joins(:memberships).where(memberships: {project_id: self.id}).distinct
    # memberships.where(approved: true).map(&:user)
  end

  def all_members
    approved_members + [user]
  end

  def other_members(current_user)
    all_members - [current_user]
  end

  def team_compatibility_for(current_user)
    h = other_members(current_user).map do |other|
      [other, Relationship.find_by(primary: current_user.personality, secondary: other.personality)]
    end.to_h
    # Relationship.where(primary: current_user, secondary: other_members.map(&:personality))
  end


  #  def is_participant?
  #   self.memberships.user_id != current_user.user_id
  # end


end
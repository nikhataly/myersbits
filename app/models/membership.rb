class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  validate :check_project_founder_is_different_from_participant
  validate :number_of_joiners_is_not_greater_than_number_of_participants
  scope :accepted, -> {where(approved: true)}

  def check_project_founder_is_different_from_participant
    if user == project.user
    errors.add(:project, "You cannot join your own project!")
    end
  end

  def number_of_joiners_is_not_greater_than_number_of_participants
    if project.participants <= project.memberships.accepted.size
    errors.add(:project, "The number of requests is higher than the number of participants needed!")
    end
  end

end

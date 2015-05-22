class Project < ActiveRecord::Base
  belongs_to :founder, class_name "User"
  has_many :memberships
  has_many :members, :through :memberships, :source :member

  validates :title, :description, presence: true
  validates :start_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
end

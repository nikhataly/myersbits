class Project < ActiveRecord::Base
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  has_many :memberships
  has_many :members, through: :memberships, source: :member

  validates :title, :description, presence: true
  validate :start_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end

  end


  def is_participant?
    (self.memberships.id != current_user.id) || self.user = current_user
  end



end
class Donation < ApplicationRecord
  belongs_to :nonprofit
  belongs_to :donation_session

  has_one :user, through: :donation_session

  def display_date
    created_at.strftime("%m/%d/%Y at %I:%M%p")
  end
end

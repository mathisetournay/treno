class Donation < ApplicationRecord
  belongs_to :nonprofit
  belongs_to :donation_session

  has_one :user, through: :donation_session
end

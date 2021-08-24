class Donation < ApplicationRecord
  belongs_to :nonprofit
  belongs_to :donation_session
end

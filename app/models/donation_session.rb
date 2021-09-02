class DonationSession < ApplicationRecord
  belongs_to :user
  has_many :donations

  def total_amount
    donations.sum(:amount)
  end
end

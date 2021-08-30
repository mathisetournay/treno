class DashboardsController < ApplicationController
  # before_action :set_donation_session, only: [:show]

  def show
    # raise
    user_donation_sessions = DonationSession.where(user: current_user)
    @donations = Donation.where(donation_session: user_donation_sessions).order(amount: :desc)
  end
end

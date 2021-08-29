class DashboardsController < ApplicationController
  # before_action :set_donation_session, only: [:show]

  def show
    # raise
    @donations = Donation.where(user: current_user)
  end
end

class PaymentsController < ApplicationController
  def new
    @donation_session = DonationSession.find(params[:donation_session_id])
  end

  def success
  end
end

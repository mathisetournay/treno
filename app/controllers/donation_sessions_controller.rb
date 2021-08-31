class DonationSessionsController < ApplicationController
  before_action :set_donation_session, only: [ :edit, :update]

  def create
    @donation_session = DonationSession.new(user: current_user)
    @donation_session.save!
    @nonprofit_ids = params[:nonprofits]
    redirect_to edit_donation_session_path(@donation_session, nonprofit_ids: @nonprofit_ids)
  end

  def edit
    @nonprofit_ids = params[:nonprofit_ids]
    @donations = @nonprofit_ids.map do |id|
      Donation.new(donation_session: @donation_session, nonprofit_id: id)
    end
  end

  def update
    params["amount-by-nonprofit-id"].each do |amount_by_nonprofit|
      donation = Donation.new(donation_session: @donation_session, nonprofit_id: amount_by_nonprofit.first, amount: amount_by_nonprofit.last)
      donation.save!
    end
    # redirect_to user_root_path
    redirect_to payment_path
  end

  private

  def set_donation_session
    @donation_session = DonationSession.find(params[:id])
  end


end

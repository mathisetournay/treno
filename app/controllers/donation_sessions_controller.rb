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

  def update # rubocop:disable Metrics/MethodLength
    donations = params["amount-by-nonprofit-id"].to_unsafe_h.map do |amount_by_nonprofit|
      Donation.create!(donation_session: @donation_session, nonprofit_id: amount_by_nonprofit.first, amount: amount_by_nonprofit.last)
    end

    line_items = donations.map do |donation|
      {
        name: donation.nonprofit.name,
        # images: [teddy.photo_url],
        amount: donation.amount * 100,
        currency: 'eur',
        quantity: 1
      }
    end

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      success_url: success_payment_url,
      cancel_url: success_payment_url
    )

    @donation_session.update(stripe_checkout_session_id: session.id)
    redirect_to new_donation_session_payment_path(@donation_session)
  end

  private

  def set_donation_session
    @donation_session = DonationSession.find(params[:id])
  end


end

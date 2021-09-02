class AddStripeCheckoutSessionIdToDonationSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :donation_sessions, :stripe_checkout_session_id, :string
  end
end

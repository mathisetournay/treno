class BannerBearWebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  skip_before_action :authenticate_user!, only: :create

  def create
    if request.headers['Authorization'] == "Bearer #{ENV['BANNER_BEAR_WEBHOOK_API_KEY']}"
      @donation = Donation.find_by(sharing_card_api_id: params['uid'])
      image     = Down.download(params['image_url_jpg'])

      @donation.sharing_card.attach(io: image, filename: "sharing_card.jpg")
    else
      head :unauthorized
    end
  end
end

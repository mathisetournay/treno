class Donation < ApplicationRecord
  belongs_to :nonprofit
  belongs_to :donation_session

  has_one :user, through: :donation_session

  has_one_attached :sharing_card

  after_create :generate_sharing_card

  def display_date
    created_at.strftime("%m/%d/%Y at %I:%M%p")
  end

  def generate_sharing_card
    # gather information
    nonprofit_name     = nonprofit.name
    nonprofit_logo_url = ApplicationController.helpers.cloudinary_url(nonprofit.photo.key)
    sub_category_image = ApplicationController.helpers.asset_url(nonprofit.sub_category_image_path, host: ENV['HOST'])
    user_fullname      = user.fullname
    payload = {
      template: ENV['BANNER_TEMPLATE_ID'],
      modifications: [
        {
          name: "subcategory_image",
          image_url: sub_category_image
        },
        {
          name: "nonprofit_logo",
          image_url: nonprofit_logo_url
        },
        {
          name: "text",
          text: "This certificate attests that #{user_fullname} has made a donation to the nonprofit #{nonprofit_name}."
        }
      ],
      webhook_url: "#{ENV['HOST']}/banner_bear_webhooks"
    }
    # send request to banner bear
    response = HTTParty.post('https://api.bannerbear.com/v2/images',
      headers: { "Authorization" => "Bearer #{ENV['BANNER_BEAR_API_KEY']}" },
      body: payload
    )
    image_id = response['uid']

    update(sharing_card_api_id: image_id)

    return response
  end
end

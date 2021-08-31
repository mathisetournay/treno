class Donation < ApplicationRecord
  belongs_to :nonprofit
  belongs_to :donation_session

  has_one :user, through: :donation_session

  def display_date
    created_at.strftime("%m/%d/%Y at %I:%M%p")
  end

  def generate_sharing_card
    # gather informations
    # nonprofit name
    nonprofit_name = nonprofit.name
    # nonprofit logo
    nonprofit_logo_url = ApplicationController.helpers.cloudinary_url(nonprofit.photo.key)
    # category image
    sub_category_image = ApplicationController.helpers.asset_url(nonprofit.sub_category_image_path, host: "https://www.treno.top/")
    # user fullname
    user_fullname = user.fullname
    # build payload
    payload = {
      template: ENV['BANNER_TEMPLATE_ID'],
      modifications: [
        {
          name: "subcategory_image",
          image_url: nonprofit_subcategory_logo_url
        },
        {
          name: "nonprofit_logo",
          image_url: nonprofit_logo_url
        },
        {
          name: "text",
          inner_html: "This certificate attests that #{currentUser.user_fullname} has made a donation to the nonprofit #{donation.nonprofit.name}."
        }
      ]
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

  def sharing_card_url
    return unless sharing_card_api_id

    response = HTTParty.get("https://api.bannerbear.com/v2/images/#{sharing_card_api_id}",
      headers: { "Authorization" => "Bearer #{ENV['BANNER_BEAR_API_KEY']}" },
    )
    response['image_url']
  end
end

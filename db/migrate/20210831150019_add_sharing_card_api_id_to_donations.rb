class AddSharingCardApiIdToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :sharing_card_api_id, :string
  end
end

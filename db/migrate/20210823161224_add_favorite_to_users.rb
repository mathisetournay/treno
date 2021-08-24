class AddFavoriteToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :favorite_sub_categories, :string, array: true, default: []
  end
end

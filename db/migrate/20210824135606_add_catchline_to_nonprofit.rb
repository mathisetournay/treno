class AddCatchlineToNonprofit < ActiveRecord::Migration[6.0]
  def change
    add_column :nonprofits, :catchline, :string
  end
end

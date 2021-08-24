class CreateNonprofits < ActiveRecord::Migration[6.0]
  def change
    create_table :nonprofits do |t|
      t.string :name
      t.string :sub_category
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end

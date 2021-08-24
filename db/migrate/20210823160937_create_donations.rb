class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.date :time
      t.integer :amount
      t.references :nonprofit, null: false, foreign_key: true
      t.references :donation_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end

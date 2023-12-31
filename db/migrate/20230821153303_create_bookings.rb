class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :instrument, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end

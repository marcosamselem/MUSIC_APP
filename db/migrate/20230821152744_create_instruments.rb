class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :type
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :location
      t.string :brand

      t.timestamps
    end
  end
end

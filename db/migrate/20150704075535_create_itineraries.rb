class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.belongs_to :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

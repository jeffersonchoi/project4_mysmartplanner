class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :itinerary, index: true, foreign_key: true
      t.belongs_to :node, index: true, foreign_key: true
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end

class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :destination
      t.date :start_date
      t.date :end_date
      t.float :budget
      t.integer :hours_per_day
      t.string :interest

      t.timestamps null: false
    end
  end
end

class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :theme_park
      t.string :museum
      t.string :beach
      t.string :shopping
      t.string :sight_landmark
      t.string :arean_stadium
      t.string :school
      t.belongs_to :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

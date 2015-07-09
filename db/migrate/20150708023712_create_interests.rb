class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.boolean :theme_park
      t.boolean :museum
      t.boolean :beach
      t.boolean :shopping
      t.boolean :sight_landmark
      t.boolean :arean_stadium
      t.boolean :school
      t.belongs_to :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

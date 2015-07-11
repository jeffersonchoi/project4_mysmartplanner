class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :node_name
      t.float :lat
      t.float :long
      t.string :address
      t.string :feature
      t.string :subfeature
      t.string :picture

      t.timestamps null: false
    end
  end
end

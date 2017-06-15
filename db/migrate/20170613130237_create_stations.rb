class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.string :image
      t.text :beverage_store
      t.text :timetable

      t.timestamps null: false
    end
  end
end

class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :departed
      t.string :destination
      t.string :waypoints
      t.string :summary
      t.text :notes

      t.timestamps
    end
  end
end

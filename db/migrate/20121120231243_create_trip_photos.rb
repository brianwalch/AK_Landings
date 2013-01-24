class CreateTripPhotos < ActiveRecord::Migration
  def change
    create_table :trip_photos do |t|
      t.integer :trip_id
      t.string :trip_image
      t.string :description

      t.timestamps
    end
  end
end

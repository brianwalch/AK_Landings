class CreatePlanePhotos < ActiveRecord::Migration
  def change
    create_table :plane_photos do |t|
      t.integer :plane_id
      t.string :plane_image
      t.string :description

      t.timestamps
    end
  end
end

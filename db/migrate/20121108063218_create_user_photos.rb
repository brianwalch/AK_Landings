class CreateUserPhotos < ActiveRecord::Migration
  def change
    create_table :user_photos do |t|
      t.integer :user_id
      t.string :user_image
      t.string :description

      t.timestamps
    end
  end
end

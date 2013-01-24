class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :manufacturer
      t.string :plane_type
      t.string :year
      t.string :cruise_speed
      t.string :n_number
      t.string :color
      t.string :home_base

      t.timestamps
    end
  end
end

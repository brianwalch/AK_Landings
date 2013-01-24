class Trip < ActiveRecord::Base
  belongs_to :users
  has_many :trip_photos
  attr_accessible :departure_time, :arrival_time, :departed, :destination, :waypoints, :summary, :notes, :user_id
end

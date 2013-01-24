class TripPhoto < ActiveRecord::Base
	belongs_to :trip
	attr_accessible :trip_id, :trip_image, :description

	mount_uploader :trip_image, ImageUploader
end

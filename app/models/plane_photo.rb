class PlanePhoto < ActiveRecord::Base
	belongs_to :plane
	attr_accessible :plane_id, :plane_image, :description

	mount_uploader :plane_image, ImageUploader
end

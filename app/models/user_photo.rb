class UserPhoto < ActiveRecord::Base
	belongs_to :users
	attr_accessible :user_id, :user_image, :description

	mount_uploader :user_image, ImageUploader
end

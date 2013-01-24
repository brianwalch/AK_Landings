class Plane < ActiveRecord::Base
	belongs_to :users
	has_many :plane_photos
	attr_accessible :manufacturer, :plane_type, :year, :cruise_speed, :n_number, :color, :home_base,  :user_id
end

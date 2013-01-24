class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :user_name
  validates_uniqueness_of :email
  has_many :planes, :dependent => :destroy
  has_many :user_photos, :dependent => :destroy
  has_many :trips
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :bio, :image, :remote_image_url,
  :first_name, :last_name, :user_name
  mount_uploader :image, ImageUploader
 
end

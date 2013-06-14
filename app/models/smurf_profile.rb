class SmurfProfile < ActiveRecord::Base
  validates_presence_of :name

  mount_uploader :profile_photo, ProfilePhotoUploader

  attr_accessible :name, :profile_photo
end

class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :company
  
end

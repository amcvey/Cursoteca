class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  has_many :subsidiaries, dependent: :destroy
  validates :name, presence: true
  
end

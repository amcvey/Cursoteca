class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :company
  has_many :subsidiaries

  def to_s
    name
  end
  
end

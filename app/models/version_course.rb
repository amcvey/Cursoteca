class VersionCourse < ActiveRecord::Base
  belongs_to :course
  validates :room, presence: true
end

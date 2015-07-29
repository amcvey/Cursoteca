class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :company
  has_many :subsidiaries
  has_many :version_courses, dependent: :destroy
  accepts_nested_attributes_for :version_courses,
    reject_if: proc {|attr| attr['price', 'commission', 'session_number', 'start_date', 'end_date', 'room'].blank? }

  def to_s
    name
  end
  
end

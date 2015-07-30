class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :company
  has_many :subsidiaries
  has_many :version_courses, dependent: :destroy
  accepts_nested_attributes_for :subsidiaries
  accepts_nested_attributes_for :version_courses,
    reject_if: proc {|attr| attr['price'].blank?  || attr['commission'].blank? || attr['start_date'].blank? || attr['end_date'].blank? || attr['room'].blank? || attr['session_number'].blank? }
    

  def to_s
    name
  end
  
end

class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  has_many :subsidiaries, dependent: :destroy
  accepts_nested_attributes_for :subsidiaries,
    reject_if: proc { |attr| attr['address'].blank? }
    allow_destroy: true
  validates :name, presence: true

end

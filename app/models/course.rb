class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  has_many :subsidiaries, dependent: :destroy
  accepts_nested_attributes_for :subsidiaries,
    reject_if: proc { |attr| attr['address'].blank? }

  validates :name, presence: true

  def to_s
    name
  end

end

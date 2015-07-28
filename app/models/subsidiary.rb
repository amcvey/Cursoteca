class Subsidiary < ActiveRecord::Base
  belongs_to :course
  validates :address, presence: true
end

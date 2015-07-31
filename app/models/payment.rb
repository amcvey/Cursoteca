class Payment < ActiveRecord::Base

  has_many :purchased_courses

end

class PurchasedCourse < ActiveRecord::Base
  belongs_to :payment
end
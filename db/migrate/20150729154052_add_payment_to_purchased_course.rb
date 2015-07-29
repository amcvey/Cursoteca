class AddPaymentToPurchasedCourse < ActiveRecord::Migration
  def change
    add_reference :purchased_courses, :payment, index: true, foreign_key: true
  end
end

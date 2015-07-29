class AddPurchasedCourseToInscription < ActiveRecord::Migration
  def change
    add_reference :inscriptions, :purchased_course, index: true, foreign_key: true
  end
end

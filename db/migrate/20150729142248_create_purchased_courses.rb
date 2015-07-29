class CreatePurchasedCourses < ActiveRecord::Migration
  def change
    create_table :purchased_courses do |t|
      t.datetime :date
      t.integer :price

      t.timestamps null: false
    end
  end
end

class CreateVersionCourses < ActiveRecord::Migration
  def change
    create_table :version_courses do |t|
      t.references :course, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :room
      t.integer :session_number
      t.integer :price
      t.integer :commission

      t.timestamps null: false
    end
  end
end

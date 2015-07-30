class AddAddressToVersionCourse < ActiveRecord::Migration
  def change
    add_column :version_courses, :address, :string
  end
end

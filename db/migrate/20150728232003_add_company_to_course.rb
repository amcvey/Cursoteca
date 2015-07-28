class AddCompanyToCourse < ActiveRecord::Migration
  def change
    add_reference :courses, :company, index: true, foreign_key: true
  end
end

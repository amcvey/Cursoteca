class CreateSubsidiaries < ActiveRecord::Migration
  def change
    create_table :subsidiaries do |t|
      t.string :address
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

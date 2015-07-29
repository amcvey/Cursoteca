class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :version_course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

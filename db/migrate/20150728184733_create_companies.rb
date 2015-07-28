class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :rut
      t.string :name
      t.string :business_name
      t.string :business_rotation
      t.integer :bank_account
      t.string :email

      t.timestamps null: false
    end
  end
end

class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :order_id
      t.string :transaction_id
      t.integer :amount
      t.string :authorization
      t.integer :card_last_numbers
      t.boolean :status
      t.string :session_id
      t.string :payment_type

      t.timestamps null: false
    end
  end
end

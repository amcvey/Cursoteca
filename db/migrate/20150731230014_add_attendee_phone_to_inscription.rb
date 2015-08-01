class AddAttendeePhoneToInscription < ActiveRecord::Migration
  def change
    add_column :inscriptions, :attendee_phone, :integer
  end
end

class AddAttendeeEmailToInscription < ActiveRecord::Migration
  def change
    add_column :inscriptions, :attendee_email, :string
  end
end

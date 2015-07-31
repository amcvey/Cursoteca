class AddAttendeeNameToInscription < ActiveRecord::Migration
  def change
    add_column :inscriptions, :attendee_name, :string
  end
end

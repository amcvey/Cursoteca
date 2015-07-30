class DropSubsidiaries < ActiveRecord::Migration
  def change
    drop_table :subsidiaries
  end
end

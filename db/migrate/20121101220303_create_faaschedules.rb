class CreateFaaschedules < ActiveRecord::Migration
  def change
    create_table :faaschedules do |t|
      t.string :SequenceNumber
      t.string :AttendanceSchedule
      t.integer :faafacility_id
      
      t.timestamps
    end
    add_index :faaschedules, :faafacility_id
  end
end

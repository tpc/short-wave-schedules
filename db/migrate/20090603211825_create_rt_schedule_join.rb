class CreateRtScheduleJoin < ActiveRecord::Migration
  def self.up
    create_table :rts_schedules, :id => false do |t|
      t.integer :rt_id
      t.integer :schedule_id
    end
  end

  def self.down
    drop_table :rts_schedules
  end
end

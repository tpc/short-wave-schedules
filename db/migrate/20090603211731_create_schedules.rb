class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
      t.string :year_season
      t.string :language
      t.date :posting_date

      t.timestamps
    end
  end

  def self.down
    drop_table :schedules
  end
end

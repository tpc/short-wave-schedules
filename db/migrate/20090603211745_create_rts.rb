class CreateRts < ActiveRecord::Migration
  def self.up
    create_table :rts do |t|
      t.string :name
      t.string :utc_offset_column_name
      t.string :utc_offset

      t.timestamps
    end
  end

  def self.down
    drop_table :rts
  end
end

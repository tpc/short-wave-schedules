class CreateFds < ActiveRecord::Migration
  def self.up
    create_table :fds do |t|
      t.time :utc_begin
      t.time :utc_end
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :fds
  end
end

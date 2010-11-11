class CreateFdRtJoin < ActiveRecord::Migration
  def self.up
    create_table :fds_rts, :id => false do |t|
      t.integer :fd_id
      t.integer :rt_id
    end
  end

  def self.down
    drop_table :fds_rts
  end
end

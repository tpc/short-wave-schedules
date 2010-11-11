class Rt < ActiveRecord::Base
  has_and_belongs_to_many :fds
  has_and_belongs_to_many :schedules
end

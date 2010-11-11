class Fd < ActiveRecord::Base
  has_and_belongs_to_many :rts
  def hr
    utc_begin.hour.to_s() + ' to ' + utc_end.hour.to_s() + ' ' + body
  end
end

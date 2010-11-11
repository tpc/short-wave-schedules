class SwsStaticController < ApplicationController
  def index
    @schedule = Schedule.find_by_sql("select *, min(datediff(curdate(), posting_date)) from schedules where curdate() > posting_date and language='#{params[:user_lang]}' group by posting_date;")[0]
  end
end

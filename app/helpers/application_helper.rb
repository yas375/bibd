module ApplicationHelper
  def format_date_with_time(datetime)
    datetime.strftime('%d/%m/%Y %H:%M:%S') if datetime
  end
end

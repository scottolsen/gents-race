module ApplicationHelper
  def seconds_to_hours(seconds)
    number_with_delimiter (seconds / 60).round(1)
  end
end

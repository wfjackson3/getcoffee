module ApplicationHelper
  def formatted_time(time)
    time.in_time_zone("Central Time (US & Canada)").strftime("%B %d at %I:%M %p")
  end
end

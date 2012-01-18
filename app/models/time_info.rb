# A module you can mix in to a class to get information about
# when it is occuring.
# To mix in this module a class must defin a @start_time and an
# @end_time.
module TimeInfo
  # A object is active if the current time is between the start and end 
  # time.
  def active?
    now = Time.now
    @start_time < now && now < @end_time
  end

  # A object is upcoming if the current time is before the start time.
  def upcoming?
    Time.now < @start_time
  end

  # A object is past when the current time is after the end time.
  def past?
    @end_time < Time.now
  end
end

def time_after(minutes)
  time = Time.new(2016)
  seconds = 60 * minutes
  time = time + seconds
  p time.strftime "%R"
end

time_after(-20)

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY
# def time_of_the_day(minutes_in_day)
#   minutes_in_day_left = minutes_in_day % MINUTES_PER_DAY
#   hour, minutes = minutes_in_day_left.divmod(HOURS_PER_DAY)
#   p hour
#   p minutes
#   p format("%02d:%02d", hour, minutes)
# end
#

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  p hours
  p minutes
  p format('%02d:%02d', hours, minutes)
end

time_of_day(0)
time_of_day(-3)
time_of_day(35)
time_of_day(-1437)
time_of_day(3000)
time_of_day(800)
time_of_day(-4231)

def get_minutes(time)
  hours, minutes = time.split(":").map{ |i| i.to_i }
  minutes + (hours * MINUTES_PER_HOUR)
end

def after_midnight(time)
  time_in_minutes_after = get_minutes(time)
  p "The number of minutes after midnight is #{time_in_minutes_after}"
end

def before_midnight(time)
  time_in_minutes_before = MINUTES_PER_DAY - get_minutes(time)
  p "The number of minutes before midnight is #{time_in_minutes_before}"
end

after_midnight("12:34")
before_midnight("01:23")
after_midnight("00:00")

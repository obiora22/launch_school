DEGREE = '\u00BA'.encode('utf-8')
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
def degree_in_minutes(float)
  degree = float.to_i
  p degree
  minutes = ((float % 1) * 60 ).to_i
  p minutes
  seconds = ((((float % 1) * 60) % 1 ) * 60 ).round
  p seconds
  p "#{degree} #{DEGREE} #{minutes}' #{seconds}'' "

end
degree_in_minutes(56.456)

def degree(float)
  float < 0 ? (input = float * -1) : (input = float)
  total_seconds = (input * SECONDS_PER_DEGREE)
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  case
  when float > 0 then p format(%(#{degrees}#{DEGREE} %02d' %02d"), minutes, seconds)
  when float < 0 then p format(%(-#{degrees}#{DEGREE} -%02d' -%02d"), minutes, seconds)
  end
end

degree(56.456)
degree(-56.456)

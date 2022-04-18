# This "require" line loads the contents of the "date" file from the standard
# Ruby library, giving you access to the Date class.
require "date"

def age_in_days(day, month, year)
  # TODO: return the age expressed in days given the day, month, and year of birth
  birth_day = Date.new(year, month, day).jd
  today = Date.today.jd

  age = (today - birth_day)

  return "you are #{age.to_s} days old"
end

puts age_in_days(21, 3, 1987)

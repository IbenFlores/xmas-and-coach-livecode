require "date"

def days_until_christmas(today_date = Date.today)
  if today_date.month == 12 && today_date.day >= 25
    (Date.new(today_date.year + 1, 12, 25) - today_date).to_i
  else
    (Date.new(today_date.year, 12, 25) - today_date).to_i
  end

end

puts days_until_christmas
puts days_until_christmas(Date.today)
puts days_until_christmas(Date.new(2021, 12, 25))
puts days_until_christmas(Date.new(2021, 12, 25)) == 365
puts days_until_christmas(Date.new(2021, 12, 3))
puts days_until_christmas(Date.new(2021, 12, 30))
puts days_until_christmas(Date.new(2021, 5, 18))

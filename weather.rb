require 'barometer'
puts "Enter your town/city."
location = gets
barometer = Barometer.new(location)
weather = barometer.measure

tomorrow = Time.now.strftime('%d').to_i + 1

weather.forecast.each do |forecast|
  day = forecast.starts_at.day

	if day == tomorrow
    dayName = 'Tomorrow'
  else
    dayName = forecast.starts_at.strftime('%A')
  end

  puts dayName + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.c.to_s + ' and a high of ' + forecast.high.c.to_s + '.'
end
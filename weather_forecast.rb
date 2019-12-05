require 'forecast_io'
require 'geocoder'
ForecastIO.api_key = 'forecast-io-api'
Geocoder.configure(:timeout => 10)

place = gets.chomp

def current_weather(place)
    if coordinates = Geocoder.coordinates(place)
	    forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently
        return "#{forecast.summary} and #{forecast.temperature} in #{place}"
    else 
        return "Location not recognised"
    end
end


puts current_weather(place)


# "McCarren Park, Brooklyn, NYC"

require './lib/airport'
require './lib/plane'

plane = Plane.new
airport = Airport.new

# p plane.land(airport)

# # plane takes off
# p plane.takeoff
#
# # expecting false (plane no longer docked at airport)
# p airport.planes_docked.include?(plane)
#
# p plane.land(airport)
# p 'the weather at the airport is'
# p airport.weather
# p 'a storm is coming'
# p airport.weather = :stormy
# p 'takeoff not permitted'
# # takeoff should now raise an error
# p plane.takeoff

p airport.capacity
airport.capacity.times do
  plane.land(airport)
end
# should now raise error about capacity
p plane.land(airport)

require './lib/airport'
require './lib/plane'

plane = Plane.new
airport = Airport.new

# p plane.land(airport)

# plane takes off
p plane.takeoff

# expecting false (plane no longer docked at airport)
p airport.planes_docked.include?(plane)

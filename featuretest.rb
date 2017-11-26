require './lib/airport'
require './lib/plane'

plane = Plane.new
airport = Airport.new

p plane.land(airport)

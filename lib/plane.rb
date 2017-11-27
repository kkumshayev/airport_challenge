require_relative 'airport'

class Plane
  attr_reader :location

  def initialize
    @location
  end

  def land(airport)
    @location = airport.request_landing(self)
    self
  end

  def takeoff
    @location.request_takeoff
    @location = :'In Flight'
    self
  end
end

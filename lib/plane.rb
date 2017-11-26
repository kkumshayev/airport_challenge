require_relative 'airport'

class Plane
  attr_reader :location

  def initialize
    @location
  end

  def land(airport)
    @location = airport
    self
  end

  def takeoff
    @location = :'In Flight'
    self
  end
end

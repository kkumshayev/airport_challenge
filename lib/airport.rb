require_relative 'plane'

class Airport
  attr_accessor :weather
  attr_reader :capacity

  def initialize
    @weather
    @capacity = 20
  end

  def request_landing(plane)
    raise 'Planes cannot land during a storm.' if @weather == :stormy
    self
  end

  def request_takeoff(plane)
    raise 'Planes cannot take off during a storm.' if @weather == :stormy
    self
  end
end

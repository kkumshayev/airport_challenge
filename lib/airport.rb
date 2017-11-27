require_relative 'plane'

class Airport
  attr_accessor :weather
  attr_reader :capacity

  def initialize
    @weather = nil
    @capacity = 20
    @planes_docked = []
  end

  def request_landing(plane)
    raise 'Planes cannot land during a storm.' if @weather == :stormy
    raise 'Cannot land. The airport is full.' if @planes_docked.count >= @capacity
    @planes_docked << plane
    self
  end

  def request_takeoff(plane)
    raise 'Planes cannot take off during a storm.' if @weather == :stormy
    @planes_docked.pop
    self
  end

end

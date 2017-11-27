require_relative 'plane'

class Airport
  attr_accessor :weather
  attr_reader :capacity

  def initialize(capacity = 20)
    @weather = nil
    @capacity = capacity
    @planes_docked = []
  end

  def request_landing(plane)
    raise 'Planes cannot land during a storm.' if @weather == :stormy
    raise 'Cannot land. The airport is full.' if full?
    @planes_docked << plane
    self
  end

  def request_takeoff
    raise 'Planes cannot take off during a storm.' if @weather == :stormy
    @planes_docked.pop
    self
  end

  private

  def full?
    @planes_docked.count >= @capacity
  end
end

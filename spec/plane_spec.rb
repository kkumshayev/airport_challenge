require 'plane'

describe Plane do
  let(:airport) { double(:airport) }

  it { is_expected.to respond_to(:land).with(1).argument }
  it { is_expected.to respond_to(:takeoff) }
  describe '#takeoff' do
    it 'takes off from an airport and is no longer docked at that airport after takeoff' do
      plane = Plane.new
      airport = Airport.new
      plane.land(airport)
      plane.takeoff
      expect(plane.location).to eq :'In Flight'
    end

    it 'cannot take off during a storm' do
      plane = Plane.new
      airport = Airport.new
      plane.land(airport)
      airport.weather = :stormy
      expect { plane.takeoff }.to raise_error 'Planes cannot take off during a storm.'
    end
  end

  describe '#landing' do
    it 'lands at an airport' do
      plane = Plane.new
      airport = Airport.new
      plane.land(airport)
      expect(plane.location).to eq airport
    end
    it 'cannot land during a storm' do
      plane = Plane.new
      airport = Airport.new
      airport.weather = :stormy
      expect { plane.land(airport) }.to raise_error 'Planes cannot land during a storm.'
    end

  

  end

end

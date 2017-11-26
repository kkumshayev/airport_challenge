require 'plane'

describe Plane do
  let(:airport) { double(:airport) }

  it { is_expected.to respond_to(:land).with(1).argument }
  it { is_expected.to respond_to(:takeoff) }

  it 'lands at an airport' do
    plane = Plane.new
    plane.land(airport)
    expect(plane.location).to eq airport
  end

  it 'takes off from an airport and is no longer docked at that airport after takeoff' do
    plane = Plane.new
    plane.land(airport)
    plane.takeoff
    expect(plane.location).to eq :'In Flight'
  end

end

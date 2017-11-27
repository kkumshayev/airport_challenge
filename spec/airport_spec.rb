require 'airport'

describe Airport do
  it { is_expected.to respond_to(:request_landing).with(1).argument }
  it { is_expected.to respond_to :request_takeoff }

  describe 'Initialization' do
    it 'is initialized with a default capacity of 20' do
      airport = Airport.new
      expect(airport.capacity).to eq 20
    end

    it 'is initialized with a variable capacity' do
      airport = Airport.new(50)
      50.times { Plane.new.land(airport) }
      expect { Plane.new.land(airport) }.to raise_error 'Cannot land. The airport is full.'
    end
  end
end

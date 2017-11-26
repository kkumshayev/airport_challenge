require 'plane'

describe Plane do
  let(:airport) {double(:airport)}

  it { is_expected.to respond_to(:land).with(1).argument}

  it 'lands at an airport' do
    expect(subject.land(airport)).to be true
  end
end

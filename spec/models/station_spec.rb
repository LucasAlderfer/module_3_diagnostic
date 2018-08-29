require 'rails_helper'

describe Station do
  it 'has a name, address, distance, access times, and fuel types' do
    station = Station.new('hello', 'street', 'zip', 'ELEC', '24-7', '10 miles')
    expect(station.class).to be(Station)
    expect(station.name).to eq('hello')
    expect(station.street).to eq('street')
    expect(station.zip).to eq('zip')
    expect(station.fuel).to eq('ELEC')
    expect(station.access).to eq('24-7')
    expect(station.distance).to eq('10 miles')
  end
end

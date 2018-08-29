require 'rails_helper'

describe NewSearch do
  it 'can generate a list of the 10 closest stations to the entered zip codes within 6 miles sorted by distance, limited to electric and propane, and it should show the name, address, fuel types, distance and access times for each station' do
    data = [{'station_name' => 'first', 'street_address' => '12345', 'zip' => '454', 'fuel_type_code' => 'ELEC', 'access_days_time' => '24-7', 'distance' => '4'}]

    allow_any_instance_of(NewSearch).to receive(:conn_setup).and_return(data)

    search = NewSearch.new('12345')
    expect(search.make_stations.class).to be(Array)
    expect(search.make_stations.first.class).to be(Station)
    expect(search.make_stations.first.name).to eq('first')
  end
end

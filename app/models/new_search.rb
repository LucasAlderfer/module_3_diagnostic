class NewSearch
  attr_reader :stations

  def initialize(zip)
    @zip = zip
    @stations = []
  end

  def make_stations
    conn = Faraday.new(url:'https://developer.nrel.gov')
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{@zip}&radius=6&limit=10&fuel_type=ELEC,LPG&api_key=#{ENV['API-KEY']}")
    stations = JSON.parse(response.body)['fuel_stations']
    stations.each do |station|
      @stations << Station.new(station['station_name'], station['street_address'], station['zip'], station['fuel_type_code'], station['access_days_time'], station['distance'])
    end
    @stations
  end

end

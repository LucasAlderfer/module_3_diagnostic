class NewSearch

  def initialize(zip)
    @zip = zip
    @stations = []
  end

  def stations
    conn = Faraday.new(url:'https://developer.nrel.gov')
    response = conn.get("/api/alt-fuel-stations/v1.json?zip=#{@zip}&limit=10&radius=6&fuel_type=ELEC,LPG&api_key=#{ENV['API-KEY']}")
    stations = response.body['fuel_stations']
    binding.pry
  end

end

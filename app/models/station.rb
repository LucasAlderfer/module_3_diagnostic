class Station
  attr_reader :name, :street, :zip, :fuel, :access, :distance

  def initialize(name, street, zip, fuel, access, distance)
    @name = name
    @street = street
    @zip = zip
    @fuel = fuel
    @access = access
    @distance = distance
  end

end

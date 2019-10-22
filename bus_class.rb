class Bus

  attr_reader :destination, :route_number, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "vroom vroom"
  end
  
end

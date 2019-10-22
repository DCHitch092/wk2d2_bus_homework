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

  def total_passengers
    return @passengers.length
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers = [] 
  end

end

class Bus

  attr_reader :number, :destination, :passengers

  def initialize(number, destination, passengers = [])
    @number = number
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "brum brum"
  end

  def pick_up_passenger(person)
    @passengers.push(person)
  end

  def drop_off_passenger(person)
    for passenger in @passengers
      if passenger == person
          @passengers.delete(person)
      end
    end

  end

  def empty_bus
    @passengers.clear
  end

end

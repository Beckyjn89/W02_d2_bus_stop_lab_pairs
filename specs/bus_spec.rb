require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

  def setup
    @person1 = Person.new("Ethel", 74)
    @person2 = Person.new("Jim", 56)
    @person3 = Person.new("Victoria", 6)

    @bus = Bus.new(22, "Princes Street", [@person1, @person2, @person3])
  end

  # def test_does_bus_have_route
  #     bus = Bus.new(22, "Princes Street")
  #     assert_equal("Princes Street", bus.destination)
  # end
  #
  # def test_does_bus_drive
  #   bus = Bus.new(22, "Princes Street")
  #   assert_equal("brum brum", bus.drive)
  # end

  def test_passengers_on_board
    assert_equal(3, @bus.passengers.length)
  end

  def test_add_passenger_to_bus
    person4 = Person.new("Fred", 100)
    @bus.pick_up_passenger(person4)
    assert_equal(4, @bus.passengers.length)
  end

  def test_remove_passenger_to_bus
    @bus.drop_off_passenger(@person3)
    assert_equal(2, @bus.passengers.length)
  end

  def test_empty_the_bus
    @bus.empty_bus
    assert_equal(0, @bus.passengers.length)
  end

end

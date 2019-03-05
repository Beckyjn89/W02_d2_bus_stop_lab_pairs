require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class BusTest < MiniTest::Test

  def test_does_bus_have_route
      bus = Bus.new(22, "Princes Street")
      assert_equal("Princes Street", bus.destination)
  end

  def test_does_bus_drive
    bus = Bus.new(22, "Princes Street")  
    assert_equal("brum brum", bus.drive)
  end


end

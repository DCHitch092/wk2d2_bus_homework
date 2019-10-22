require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_class')
require_relative('../person_class')

class TestBusClass  < MiniTest::Test

  def setup
    @bus = Bus.new(666, "Hell")
  end

  def test_drive
    assert_equal("vroom vroom", @bus.drive())
  end

  def test_attributes_exist
  #test route number exists
    assert_equal(666, @bus.route_number)

  #test destination exists
    assert_equal("Hell", @bus.destination)
  end

  def test_total_passengers
    assert_equal(0,@bus.passengers.length())
  end




end

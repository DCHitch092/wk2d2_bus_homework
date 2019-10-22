require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_class')
require_relative('../person_class')

class TestBusClass  < MiniTest::Test

  def setup
    @person1 = Person.new("Satan",69)
    @person2 = Person.new("Einstein",87)
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
    assert_equal(0,@bus.total_passengers())
  end

  def test_pick_up
    @bus.pick_up(@person2)
    result = @bus.total_passengers()
    assert_equal(1,result)
  end

  def test_drop_off
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.drop_off(@person1)
    result = @bus.total_passengers()
    assert_equal(1, result)
  end





end

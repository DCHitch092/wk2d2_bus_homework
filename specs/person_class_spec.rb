require('minitest/autorun')
require('minitest/pride')
require_relative('../person_class')

class TestPersonClass < MiniTest::Test

  def setup
    @person1 = Person.new("Satan",69)
    @person2 = Person.new("Einstein",87)
  end

#testing attributes exist
  def test_attributes_exist
    assert_equal("Satan",@person1.name)
    assert_equal(87,@person2.age)
  end



end

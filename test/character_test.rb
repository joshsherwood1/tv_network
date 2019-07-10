require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < MiniTest::Test

  def setup
    @kitt = Character.new("KITT", "William Daniels", 1000000)
  end

  def test_that_it_exists
    assert_instance_of Character, @kitt
  end

  def test_that_kitt_has_attributes
    assert_equal "KITT", @kitt.name
    assert_equal "William Daniels", @kitt.actor
    assert_equal 1000000, @kitt.salary
  end
end

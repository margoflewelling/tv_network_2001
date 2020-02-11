require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_it_exists
    assert_instance_of Show, @knight_rider
  end

  def test_it_has_attrs
     assert_equal "Knight Rider", @knight_rider.name
     assert_equal "Glen Larson", @knight_rider.creator
     assert_equal [@michael_knight, @kitt], @knight_rider.characters
  end

  def test_total_salary
    assert_equal 2600000, @knight_rider.total_salary
  end

  def test_highest_paid
    assert_equal "David Hasselhoff", @knight_rider.highest_paid_actor
  end

  def test_get_show_actors
    assert_equal ["David Hasselhoff", "William Daniels"], @knight_rider.actors
  end

end

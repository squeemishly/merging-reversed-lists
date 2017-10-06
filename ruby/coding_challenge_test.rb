gem 'minitest'
require 'pry'
require 'minitest/autorun'
require_relative './coding_challenge'

class MergerTest < Minitest::Test
  attr_reader :merger

  def setup
    @merger = Merger.new
  end

  def test_it_exists
    assert_instance_of Merger, merger
  end

  def test_it_can_merge_two_empty_arrays
    assert_equal [], merger.mergify([], [])
  end

  def test_it_can_merge_two_arrays_with_the_same_value_in_each
    assert_equal [1, 1], merger.mergify([1], [1])
  end
end

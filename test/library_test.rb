require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/book'
require './lib/author'
require './lib/library'


class LibraryTest < MiniTest::Test

  def setup
    @dpl = Library.new("Denver Public Library")
  end

  def test_that_it_exits
    assert_instance_of Library, @dpl
  end

  def test_its_attributes
    assert_equal "Denver Public Library", @dpl.name
    assert_equal [], @dpl.books
    assert_equal [], @dpl.authors 
  end
end

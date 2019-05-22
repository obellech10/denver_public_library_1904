require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/book'
require './lib/author'

class AuthorTest < MiniTest::Test

  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  def test_that_it_exits
    assert_instance_of Author, @charlotte_bronte
  end

  def test_its_attributes
    assert_equal "Charlotte Bronte", @charlotte_bronte.name
    assert_equal [], @charlotte_bronte.books
  end
end

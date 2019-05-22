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

  def test_that_author_can_write
    book_1 = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Erye", publication_date: "October 16, 1847"})
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    assert_equal Book, jane_eyre.class
    assert_equal "Jane Eyre", jane_eyre.title
  end

end

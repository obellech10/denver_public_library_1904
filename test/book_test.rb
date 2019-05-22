require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/book'

class BookTest < MiniTest::Test

  def setup
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  def test_that_it_exits
    assert_instance_of Book, @book
  end
end

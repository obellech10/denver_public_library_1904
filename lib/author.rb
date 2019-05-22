class Author
  attr_reader :name

  attr_accessor :books

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @name = "#{@first_name} #{@last_name}"
    @books = []
    @book_to_add = []
  end

  def write(title, publication_date)
    @book_to_add = Book.new(author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date)
  end

  def add_book
    @books << @book_to_add
  end
end

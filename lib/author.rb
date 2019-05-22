class Author
  attr_reader :name,
              :books

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @name = "#{@first_name} #{@last_name}"
    @books = []
  end

  def write(title, publication_date)
    Book.new(author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date)
  end
end

class Book
  attr_reader :title,
              :author,
              :publication_year

  def initialize(book_info)
    @author_first_name = book_info[:author_first_name]
    @author_last_name = book_info[:author_last_name]
    @author = "#{@author_first_name} #{@author_last_name}"
    @title = book_info[:title]
    @publication_date = book_info[:publication_date]
    @publication_year = @publication_date.slice(-4..-1)
  end
end

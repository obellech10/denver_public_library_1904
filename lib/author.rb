class Author
  attr_reader :name,
              :books

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @name = "#{@first_name} #{@last_name}"
    @books = []
  end
end

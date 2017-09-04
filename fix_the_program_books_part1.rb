class Book
  attr_reader :author, :title
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
# to_s is called on String with #{} and with puts.
# note that "" is part of the output string, the interpolation happens
# with percent string %()
puts %(The author of "#{book.title}" is #{book.author}.)
# to_s is called on object with #{}, then on String with puts
puts %(book = #{book}.)

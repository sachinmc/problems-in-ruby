# rectangles_squares.rb

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(side)
    super(side, side)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"

=begin
Class Square can also be implemented as follows:

class Square < Rectangle
  def initialize(height, width = height)
    super
  end
end
=end 

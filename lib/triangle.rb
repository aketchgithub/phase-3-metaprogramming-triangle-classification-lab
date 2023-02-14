class Triangle

  class TriangleError < StandardError; end
  # attr_accessor :equilateral, :isosceles, :scalene
  # write code here
  def initialize (a,b,c)
   @sides = [a,b,c].sort
   raise TriangleError if @sides.min <=0
   raise TriangleError if @sides[0] + @sides[1] <= @sides[2]

  end

  def kind 
    if @sides.uniq.size == 1
      :equilateral
    elsif
      @sides.uniq.size == 2
      :isosceles
    else
      :scalene
      end
    end
    
end

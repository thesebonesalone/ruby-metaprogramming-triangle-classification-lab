class Triangle
  # write code here
  attr_accessor :sides, :kind
  def initialize(a,b,c)
    @sides = [a,b,c]
    if   @sides.any?{|side| side <= 0 || side >= (@sides.sum - side)}
      raise TriangleError
    else
    @kind = [:equilateral, :isosceles, :scalene][@sides.uniq.length - 1]
    end
  end
  class TriangleError < StandardError
    def message
      "Triangle is invalid."
    end
  end
end

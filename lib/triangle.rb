class Triangle
  attr_accessor :length1 ,:length2,:length3
  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  def kind
    valid_triangle
    if length1 == length2 && length2 == length3
      :equilateral
    elsif length1==length2 || length2 == length3 || length3 == length1
      :isosceles
    else
      :scalene
    end
  end
  def valid_triangle
    raise TriangleError unless     length1 >0 && length2 >0 && length3>0 && triangle_inequality
  end

  def triangle_inequality
    length1 + length2 > length3 && length1+ length3 > length2 && length2 + length3 > length1
  end
  class TriangleError < StandardError

  end
end

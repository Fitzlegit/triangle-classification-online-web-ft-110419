class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene, :side1, :side2, :side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if invalid
        raise TriangleError
    elsif equilateral
      :equilateral
    elsif isosceles
      :isosceles
    else
      :scalene
    end
  end

  def equilateral
    @side1 == @side2 && @side1 == @side3
  end

  def isosceles
    @side1 == @side2 || @side1 == @side3 || @side2 == @side3
  end

  def zero_check
    (@side1 || @side2 || @side3) <= 0
  end

  def inequality
    @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
  end

  def invalid
    zero_check || inequality
  end



  class TriangleError < StandardError
    #return a custom error if the perematers for a triangle are wrong
    def message
      "0 is an invalid number"
    end
  end
end

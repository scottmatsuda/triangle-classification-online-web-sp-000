class Triangle
  
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 < 0 || @side2 < 0 || @side3 < 0 || @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
      if @side1 == @side2 && @side1 == @side3 
        return :equilateral
      if (@side1 == @side2 && @side1 != @side3) || (@side2 == @side3 && @side2 != @side1) || (@side3 == @side1 && @side3 != @side2)
        return :isosceles
      else
        return :scalene
      end
    end
  end
end
  class TriangleError < StandardError
    def message
      "It is not a triangle."
    end
  end
  
end

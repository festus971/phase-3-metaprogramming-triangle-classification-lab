class Triangle 

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 =length3
  end

  def kind
    triangle= [@length1, @length2, @length3].uniq
    p triangle
    if(@length1 > 0 && @length2 > 0 && @length3 > 0 ) && ((@length1 + @length2) > @length3 && (@length1 + @length3) > @length2 && (@length2 + @length3) > @length1)
      if triangle.length == 1
        :equilateral
      elsif triangle.length ==2
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end
   class TriangleError < StandardError
   end

        
      end
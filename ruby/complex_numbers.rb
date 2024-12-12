class ComplexNumber
  attr_reader :real, :imaginary

  def initialize(real, imaginary = 0)
    @real = real
    @imaginary = imaginary
  end

  def +(other)
    ComplexNumber.new(@real + other.real, @imaginary + other.imaginary)
  end

  def -(other)
    ComplexNumber.new(@real - other.real, @imaginary - other.imaginary)
  end

  def *(other)
    real_part = @real * other.real - @imaginary * other.imaginary
    imaginary_part = @real * other.imaginary + @imaginary * other.real
    ComplexNumber.new(real_part, imaginary_part)
  end

  def /(other)
    denominator = other.real**2 + other.imaginary**2
    real_part = (@real * other.real + @imaginary * other.imaginary) / denominator
    imaginary_part = (@imaginary * other.real - @real * other.imaginary) / denominator
    ComplexNumber.new(real_part, imaginary_part)
  end

  def abs
    Math.sqrt(@real**2 + @imaginary**2)
  end

  def conjugate
    ComplexNumber.new(@real, -@imaginary)
  end

  def exp
    factor = Math.exp(@real)
    real_part = factor * Math.cos(@imaginary)
    imaginary_part = factor * Math.sin(@imaginary)
    ComplexNumber.new(real_part, imaginary_part)
  end

  def ==(other)
    @real == other.real && @imaginary == other.imaginary
  end
end

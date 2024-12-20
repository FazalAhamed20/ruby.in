class Integer
  def to_roman
    numerals = [
      [1000, "M"], [900, "CM"], [500, "D"], [400, "CD"], 
      [100, "C"], [90, "XC"], [50, "L"], [40, "XL"], 
      [10, "X"], [9, "IX"], [5, "V"], [4, "IV"], [1, "I"]
    ]
    
    number = self
    p number
    result = ""
    
    numerals.each do |value, symbol|
      p value,symbol
      while number >= value
        result += symbol
        number -= value
      end
    end
    
    result
  end
end
p 987.to_roman
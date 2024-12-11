class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if !ALLOWED_OPERATIONS.include?operation
      p operation
raise UnsupportedOperation,"notvalid"

    else
        if first_operand.class==String || second_operand.class==String
raise ArgumentError,"Not valid"
      end
      if operation=="/" && second_operand==0
        return "Division by zero is not allowed."

      end
      
    
    result= first_operand.send(operation,second_operand)

      return "#{first_operand} #{operation} #{second_operand} = #{result}"
    

   end

  end
end

 SimpleCalculator.calculate(33, 0, "**")
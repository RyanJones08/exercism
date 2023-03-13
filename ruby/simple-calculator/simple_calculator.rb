class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    result = nil
    if operation == '+'
      begin
        result = first_operand + second_operand
      rescue => exception
        raise ArgumentError.new("Invalid argument")
      end      
    elsif operation == '/'
      if second_operand.zero?
        return 'Division by zero is not allowed.'
      end
      begin
        result = first_operand / second_operand
      rescue => exception
        raise ArgumentError.new("Invalid argument")
      end      
    elsif operation == '*'
      begin
        result = first_operand * second_operand
      rescue => exception
        raise ArgumentError.new("Invalid argument")
      end      
    else
      raise UnsupportedOperation.new("${operation} not allowed")
    end
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end

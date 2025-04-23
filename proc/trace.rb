def trace(name, proc)
  Proc.new do  |*args| 
    puts "Calling #{name} with #{args}"
    puts "=> #{proc.call(*args)}"
  end
end

adder = Proc.new { |a, b| a + b }
traced = trace("adder", adder)

traced.call(2,3)

# В консоли:
# Calling adder with [2, 3]
# => 5

def compose(double, increment)
  Proc.new { |num| double.call(increment.call(num)) }
end

double = Proc.new { |x| x * 2 }
increment = Proc.new { |x| x + 1 }
h = compose(double, increment)
p h.call(5)  # сначала increment(5)=6, потом double(6)=12

#algorithmic

def pipeline(initial, procs)
  iteration = 0
  current = initial

  while procs.size > iteration
    current = procs[iteration].call(current)
    iteration += 1
  end

  current
end


add5 = Proc.new { |n| n + 5 }
times3 = Proc.new { |n| n * 3 }
minus2 = Proc.new { |n| n - 2 }

p pipeline(4, [add5, times3, minus2])

# шаг 1: 4 + 5 = 9
# шаг 2: 9 * 3 = 27
# шаг 3: 27 - 2 = 25
# => 25

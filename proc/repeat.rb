def repeat(str, times, &block)
  incr = 1
  times.times do 
    puts "#{incr}#{block.call(str)}"
    incr +=1
  end
end

results = repeat("hey", 3) { |s, i| "#{i}: #{s.upcase}" }

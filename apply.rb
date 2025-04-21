def apply(num, &block)
  num.times do 
    block.call
  end
end

greet = Proc.new { puts "Hey!" }

apply(3, &greet)
is_even = ->(x) { x % 2 == 0 } 

arr = [1, 2, 3, 4, 5, 6]

p arr.select { |n| is_even.call(n) }
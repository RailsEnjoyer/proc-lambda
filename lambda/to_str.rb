arr = [1, 2, 3, 4, 5, 6]

to_str = ->(x) { "Num: #{x}" }

p arr.map { |n| to_str.call(n) }
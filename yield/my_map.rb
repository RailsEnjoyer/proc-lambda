def my_map(arr)
  new_arr = []
  
  arr.each do |e|
    new_arr << (yield e)
  end

  new_arr
end

arr = [1, 2, 3, 4, 5]

p my_map(arr) { |n| n * 2 }
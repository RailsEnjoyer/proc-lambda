def transform_and_filter(arr, &block)
  result = []
  arr.each do |element|
    transformed = block.call(element)
    result << transformed if transformed
  end
  result
end

p transform_and_filter([1,2,3,4]) { |n| n.even? ? n * 2 : nil }

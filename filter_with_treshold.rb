def filter_with_threshold(arr, threshold, &block)
  result = []
  arr.each do |element|
    if element >= threshold && block.call(element)
      result << element
    end
  end

  result
end

p filter_with_threshold([1,5,10,15], 10) { |n| n.even? }
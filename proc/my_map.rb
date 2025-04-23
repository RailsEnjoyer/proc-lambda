class Array
  def my_map(&block)
    result = []
    self.each do |elem|
      result << block.call(elem)
    end
    result
  end
end

p [1,2,3].my_map { |n| n * 10 }

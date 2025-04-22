class Array
  def my_select(&block)
    result = []

    self.each do |element|
        result << element if block.call(element)
    end

    result
  end
end

p [1, 2, 3, 4, 5, 6].my_select { |n| n.even? }
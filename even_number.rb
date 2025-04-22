# nums = [1,2,3,4,5,6]

# my_proc = Proc.new { |n| n.even? }

# puts nums.select(&my_proc)


nums = [1,2,3,4,5,6]

def even_number(numbers, &block)
  numbers.select(&block)
end

block = Proc.new { |n| n.even? }

p even_number(nums, &block)
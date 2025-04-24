def twice(num)
  [(yield num), (yield num)]
end

p twice(2) { |n| n**3 }
def safe_divide(a, b)
  yield(a, b) if b != 0
end

safe_divide(9, 3) { |n1, n2| p n1/n2 }
def each_char(str)
  a = str.chars
  yield(a)
end

str = "yield theme goes fine"

p each_char(str) { |s| s.map { |s2| s2.upcase }.join }
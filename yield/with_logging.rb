def with_logging
  puts 'start'

  yield 'hello'

  puts 'end'
end

with_logging { |n| p n.upcase }
